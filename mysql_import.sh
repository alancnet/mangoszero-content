#!/bin/bash
#
# This script will import the structure for the mangos databases for characters,
# realm list, world content and scripts.
#
# After importing the structure, it will gradually load databases contents to
# populate your databases with the latest available releases.

# - Prepare required variables -----------------------------------------------
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TMP_FOLDER=${TMPDIR-/tmp}

# - Include settings ---------------------------------------------------------
if [[ ! -r "mysql_info.sh" ]]; then
    echo "Could not open database configuration." >&2
    echo "Copy mysql_info.sh.template to mysql_info.sh and adapt it to your needs." >&2
    exit 2
else
    . "${DIR}/mysql_info.sh"
fi

# ----------------------------------------------------------------------------

function import ()
{
    db=$2
    filename=$(basename "$1")
    echo -n "Importing ${filename} into ${db} ..."
    # Check if database exists
    err=`echo "quit" | mysql${OPTS} ${db} 2>&1`
    if [ $? != 0 ]; then
        if echo "${err}" | grep -q "Access denied"; then
            echo -e "\nDATABASE ${db} EXISTS BUT USER ${USER} DOES NOT HAVE ACCESS TO IT, ABORTING"
            exit
        fi
        echo -n "[creating ${db}]"
        if ! echo "CREATE DATABASE ${db};" | mysql${OPTS} 2>/dev/null ; then
            echo -e "\nDATABASE ${db} DOES NOT EXIST AND I FAILED TO CREATE IT, ABORTING"
            exit
        fi
    fi
    mysql${OPTS} ${db} <$1
    echo " done"
}

function import_structure ()
{
    # - Import character database structure --------------------------------------
    for x in ./_init/character/*.sql; do
        import $x ${CHARACTER_DATABASE}
    done

    # - Import realm list database structure -------------------------------------
    for x in ./_init/realm/*.sql; do
        import $x ${REALM_DATABASE}
    done

    # - Import script database structure -----------------------------------------
    for x in ./_init/script/*.sql; do
        import $x ${SCRIPT_DATABASE}
    done

    # - Import world database structure ------------------------------------------
    for x in ./_init/world/*.sql; do
        import $x ${WORLD_DATABASE}
    done
}

function import_data ()
{
    # - Import content updates: character ----------------------------------------
    for x in ./_updates/character/*.sql; do
         import $x ${CHARACTER_DATABASE}
    done

    # - Import content updates: realm --------------------------------------------
    for x in ./_updates/realm/*.sql; do
         import $x ${REALM_DATABASE}
    done

    # - Import content updates: scripts ------------------------------------------
    for x in ./_updates/script/*.sql; do
         import $x ${SCRIPT_DATABASE}
    done

    # - Import content updates: world --------------------------------------------
    for x in ./_updates/world/*.sql; do
         import $x ${WORLD_DATABASE}
    done

    # - Optimize imported data: world --------------------------------------------
    for x in ./_extras/world/*.sql; do
         import $x ${WORLD_DATABASE}
    done
}

# - Do not edit below! Here be dragon! ---------------------------------------

# # - Check for parameters -----------------------------------------------------
# if [ $# > 1 ]
# then
#     case "$1" in
#         initial)
#             echo "Performing initial installation"
#             exit
#             ;;
#         update)
#             echo "Performing update"
#             exit
#             ;;
#         *)
#             echo "Choose initial installation or update"
#             exit
#             ;;
#     esac
#
# fi
# ----------------------------------------------------------------------------

import_structure
import_data
