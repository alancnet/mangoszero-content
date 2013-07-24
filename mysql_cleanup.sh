#!/bin/bash
#
# This script will turn single-line INSERT statements in the SQL dumps
# into readable multi-line statements.

# - Include common libraries and settings ------------------------------------
source "libui.sh" || { echo "Something went wrong while sourcing library lib-ui.sh" >&2 ; exit 2; }

# - Prepare required variables -----------------------------------------------
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TMP_FOLDER=${TMPDIR-/tmp}
# ----------------------------------------------------------------------------

# - Replace VALUES ( by VALUES\n( --------------------------------------------
find ${DIR} -name '*.sql' -type f -exec perl -pi -e 's/VALUES \(/VALUES\n\(/g' {} \;

# - Replace huge insert by multi-line inserts --------------------------------
find ${DIR} -name '*.sql' -type f -exec perl -pi -e 's/\),\(/\),\n\(/g' {} \;

