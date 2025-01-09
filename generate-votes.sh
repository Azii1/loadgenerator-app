#!/bin/sh
echo "starting ApacheBench to generate votes..."

# create 2000 votes (2000 for option a, 1000 for option b)
ab -n 1000 -c 50 -p posta -T "application/x-www-form-urlencoded" http://vote/
ab -n 1000 -c 50 -p postb -T "application/x-www-form-urlencoded" http://vote/

# create 1000 votes for option B
ab-n 1000 -c 50 -p postb -T "application/x-www-form-urlencoded" http://vote/

echo "vote generation completed."
