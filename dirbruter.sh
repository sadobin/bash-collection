#! /usr/bin/bash

hostname=$1
wordlist=$2
ua="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0"
NOTATION="\033[0;32m[+]\033[0m"
EX_NOTATION="\033[0;31m[!]\033[0m"


function bruter
{

        if [ $1 ] && [ $2 ];
        then

                while read line;
                do
                        url="$hostname/$line"
                        status_code=$( curl -A "$ug" -Ls $url -w '%{http_code}' | tail -1 )

                        # Fetch last three characters which contain status code
                        status_code=${status_code:$(expr ${#status_code} - 3):${#status_code}}
                        echo -e "${NOTATION} $status_code -> $url"

                done < $wordlist

        else
                echo -e "${EX_NOTATION} URL or wordlist was not passed"
        fi
}


bruter $hostname $wordlist
