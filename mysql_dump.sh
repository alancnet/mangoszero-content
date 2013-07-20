#!/bin/bash
#
# This script will dump the contents of the MySQL database to files.
#

# - Include common libraries and settings ------------------------------------
source "libui.sh" || { echo "Something went wrong while sourcing library lib-ui.sh" >&2 ; exit 2; }
source "mysql_info.sh"

# - Prepare required variables -----------------------------------------------
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TMP_FOLDER=${TMPDIR-/tmp}
# ----------------------------------------------------------------------------

function dump_data ()
{
    echo -n "Dumping contents of $1:$2 ..."
    [ ! -d ${DIR}/$1 ] && mkdir ${DIR}/$1
    mysqldump${OPTS} -Q --skip-dump-date --add-drop-table $1 $2 >${DIR}/$1/$2.sql
    echo " done"
}

function dump_struc ()
{
    echo -n "Dumping structure of $1:$2 ..."
    [ ! -d ${DIR}/$1 ] && mkdir ${DIR}/$1
    mysqldump${OPTS} -Q --skip-dump-date --add-drop-table --no-data $1 $2 >${DIR}/$1/$2.sql
    echo " done"
}

# ------------------------------------------------------------------------------
# Application tables with no data
# ------------------------------------------------------------------------------
dump_struc zp_characters auction
dump_struc zp_characters bugreport
dump_struc zp_characters characters
dump_struc zp_characters character_action
dump_struc zp_characters character_aura
dump_struc zp_characters character_battleground_data
dump_struc zp_characters character_db_version
dump_struc zp_characters character_gifts
dump_struc zp_characters character_homebind
dump_struc zp_characters character_honor_cp
dump_struc zp_characters character_instance
dump_struc zp_characters character_inventory
dump_struc zp_characters character_pet
dump_struc zp_characters character_queststatus
dump_struc zp_characters character_reputation
dump_struc zp_characters character_skills
dump_struc zp_characters character_social
dump_struc zp_characters character_spell
dump_struc zp_characters character_spell_cooldown
dump_struc zp_characters character_stats
dump_struc zp_characters character_ticket
dump_struc zp_characters character_tutorial
dump_struc zp_characters corpse
dump_struc zp_characters creature_respawn
dump_struc zp_characters gameobject_respawn
dump_struc zp_characters game_event_status
dump_struc zp_characters groups
dump_struc zp_characters group_instance
dump_struc zp_characters group_member
dump_struc zp_characters guild
dump_struc zp_characters guild_eventlog
dump_struc zp_characters guild_member
dump_struc zp_characters guild_rank
dump_struc zp_characters instance
dump_struc zp_characters instance_reset
dump_struc zp_characters item_instance
dump_struc zp_characters item_loot
dump_struc zp_characters item_text
dump_struc zp_characters mail
dump_struc zp_characters mail_items
dump_struc zp_characters petition
dump_struc zp_characters petition_sign
dump_struc zp_characters pet_aura
dump_struc zp_characters pet_spell
dump_struc zp_characters pet_spell_cooldown
dump_struc zp_characters saved_variables
dump_struc zp_characters world

dump_struc zp_realm account_banned
dump_struc zp_realm ip_banned
dump_struc zp_realm realmcharacters
dump_struc zp_realm uptime

dump_struc zp_scripts custom_texts

dump_struc zp_world locales_creature
dump_struc zp_world locales_gameobject
dump_struc zp_world locales_gossip_menu_option
dump_struc zp_world locales_item
dump_struc zp_world locales_npc_text
dump_struc zp_world locales_page_text
dump_struc zp_world locales_points_of_interest
dump_struc zp_world locales_quest

# ------------------------------------------------------------------------------
# Application tables containing required data
# ------------------------------------------------------------------------------
dump_data  zp_characters character_db_version

dump_data  zp_realm account
dump_data  zp_realm realmd_db_version
dump_data  zp_realm realmlist

dump_data  zp_scripts gossip_texts
dump_data  zp_scripts script_texts
dump_data  zp_scripts script_waypoint
dump_data  zp_scripts sd2_db_version

dump_data  zp_world areatrigger_involvedrelation
dump_data  zp_world areatrigger_tavern
dump_data  zp_world areatrigger_teleport
dump_data  zp_world battleground_events
dump_data  zp_world battleground_template
dump_data  zp_world battlemaster_entry
dump_data  zp_world command
dump_data  zp_world conditions
dump_data  zp_world creature
dump_data  zp_world creature_addon
dump_data  zp_world creature_ai_scripts
dump_data  zp_world creature_ai_summons
dump_data  zp_world creature_ai_texts
dump_data  zp_world creature_battleground
dump_data  zp_world creature_equip_template
dump_data  zp_world creature_equip_template_raw
dump_data  zp_world creature_involvedrelation
dump_data  zp_world creature_linking
dump_data  zp_world creature_linking_template
dump_data  zp_world creature_loot_template
dump_data  zp_world creature_model_info
dump_data  zp_world creature_movement
dump_data  zp_world creature_movement_template
dump_data  zp_world creature_onkill_reputation
dump_data  zp_world creature_questrelation
dump_data  zp_world creature_template
dump_data  zp_world creature_template_addon
dump_data  zp_world creature_template_spells
dump_data  zp_world dbscripts_on_creature_death
dump_data  zp_world dbscripts_on_creature_movement
dump_data  zp_world dbscripts_on_event
dump_data  zp_world dbscripts_on_gossip
dump_data  zp_world dbscripts_on_go_template_use
dump_data  zp_world dbscripts_on_go_use
dump_data  zp_world dbscripts_on_quest_end
dump_data  zp_world dbscripts_on_quest_start
dump_data  zp_world dbscripts_on_spell
dump_data  zp_world db_script_string
dump_data  zp_world db_version
dump_data  zp_world disenchant_loot_template
dump_data  zp_world exploration_basexp
dump_data  zp_world fishing_loot_template
dump_data  zp_world gameobject
dump_data  zp_world gameobject_battleground
dump_data  zp_world gameobject_involvedrelation
dump_data  zp_world gameobject_loot_template
dump_data  zp_world gameobject_questrelation
dump_data  zp_world gameobject_template
dump_data  zp_world game_event
dump_data  zp_world game_event_creature
dump_data  zp_world game_event_creature_data
dump_data  zp_world game_event_gameobject
dump_data  zp_world game_event_mail
dump_data  zp_world game_event_quest
dump_data  zp_world game_graveyard_zone
dump_data  zp_world game_tele
dump_data  zp_world game_weather
dump_data  zp_world gossip_menu
dump_data  zp_world gossip_menu_option
dump_data  zp_world instance_template
dump_data  zp_world item_enchantment_template
dump_data  zp_world item_loot_template
dump_data  zp_world item_required_target
dump_data  zp_world item_template
dump_data  zp_world mail_loot_template
dump_data  zp_world mangos_string
dump_data  zp_world npc_gossip
dump_data  zp_world npc_text
dump_data  zp_world npc_trainer
dump_data  zp_world npc_trainer_template
dump_data  zp_world npc_vendor
dump_data  zp_world npc_vendor_template
dump_data  zp_world page_text
dump_data  zp_world petcreateinfo_spell
dump_data  zp_world pet_levelstats
dump_data  zp_world pet_name_generation
dump_data  zp_world pickpocketing_loot_template
dump_data  zp_world playercreateinfo
dump_data  zp_world playercreateinfo_action
dump_data  zp_world playercreateinfo_item
dump_data  zp_world playercreateinfo_spell
dump_data  zp_world player_classlevelstats
dump_data  zp_world player_levelstats
dump_data  zp_world player_xp_for_level
dump_data  zp_world points_of_interest
dump_data  zp_world pool_creature
dump_data  zp_world pool_creature_template
dump_data  zp_world pool_gameobject
dump_data  zp_world pool_gameobject_template
dump_data  zp_world pool_pool
dump_data  zp_world pool_template
dump_data  zp_world quest_template
dump_data  zp_world reference_loot_template
dump_data  zp_world reputation_reward_rate
dump_data  zp_world reputation_spillover_template
dump_data  zp_world reserved_name
dump_data  zp_world scripted_areatrigger
dump_data  zp_world scripted_event_id
dump_data  zp_world skill_fishing_base_level
dump_data  zp_world skinning_loot_template
dump_data  zp_world spell_affect
dump_data  zp_world spell_area
dump_data  zp_world spell_bonus_data
dump_data  zp_world spell_chain
dump_data  zp_world spell_elixir
dump_data  zp_world spell_facing
dump_data  zp_world spell_learn_spell
dump_data  zp_world spell_linked
dump_data  zp_world spell_pet_auras
dump_data  zp_world spell_proc_event
dump_data  zp_world spell_proc_item_enchant
dump_data  zp_world spell_script_target
dump_data  zp_world spell_target_position
dump_data  zp_world spell_threat
dump_data  zp_world transports
dump_data  zp_world world_template
