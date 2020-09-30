# presto-container
 
Presto Container is a self-contained demonstration of using the Starburst Presto container to connect to multiple repositories.

You will need to modify the catalogs in the etc/catalog directory to connect to your data sources as discussed here: https://docs.starburstdata.com/latest/connector/starburst-connectors.html

This is a demo being shown at the Postgres Conference webinar. It was created on a Mac with Docker Desktop for Mac installed, as well as Kitematic, which makes things easier to deal with.

To use this, you must have Docker Desktop installed and a reasonable amount of RAM, at least 8GB. It will pull down a Starburst Presto container, add volumes to it, and configure it with the settings and connectors found in the etc directory. It might not work properly on Windows Machines yet, unless you have the requisite Unix extensions.

Once you've downloaded it, just run run-presto-container-demo.sh and it will start a little container that will try to connect to all data sources listed. Then, use your favorite SQL tool to query the data sources.
