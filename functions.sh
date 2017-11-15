#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh


jv_pg_fo_next_match() {
	say "$(fo_lang i_check)"
	local json="$(curl --header "X-Auth-Token: $jv_pg_fo_api" -s http://api.football-data.org/v1/teams/98/fixtures?timeFrame=n6)"
	local date_match="$(echo "$json" | jq -r "$nmatch.fixtures[0].date")"
	local nmatch=""
	nmatch+="Prochain match $(echo "$json" | jq -r "$nmatch.fixtures[0].homeTeamName") contre $(echo "$json" | jq -r "$nmatch.fixtures[0].awayTeamName") le $(date -d $date_match +'%d/%m à %H heures %M')"
	say "$nmatch"
}

jv_pg_fo_previous_match() {
	say "$(fo_lang i_check)"
	local json="$(curl --header "X-Auth-Token: $jv_pg_fo_api" -s http://api.football-data.org/v1/teams/98/fixtures?timeFrame=p20)"
	local pmatch=""
	pmatch+="Dernier match $(echo "$json" | jq -r "$pmatch.fixtures[0].homeTeamName") contre $(echo "$json" | jq -r "$pmatch.fixtures[0].awayTeamName") score $(echo "$json" | jq -r "$pmatch.fixtures[0].result.goalsHomeTeam") à $(echo "$json" | jq -r "$pmatch.fixtures[0].result.goalsAwayTeam")"
	say "$pmatch"

}