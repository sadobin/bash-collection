#! /usr/bin/bash

url=$1
ua="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0"
verbs=(GET POST HEAD PUT OPTIONS CONNECT TRACE DELETE PATCH)
NOTATION="\033[0;32m[+]\033[0m"
EX_NOTATION="\033[0;31m[!]\033[0m"


function verb_tamper
{
        if [ $1 ];
        then
                for verb in ${verbs[@]};
                do
                        status_code=$( curl -Ls -X$verb -A "$ua" $url -w '%{http_code}' | tail -1 )

                        # Fetch the last three characters which is status code
                        status_code=${status_code:$(expr ${#status_code} - 3):${#status_code}}

                        echo -e "${NOTATION} $status_code -> $verb: $url"
                done
        else
                echo -e "${EX_NOTATION} WHAT ABOUT URL :] "
        fi
    

}


verb_tamper $url
