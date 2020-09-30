# presto-container
 
Presto Container is a self-contained demonstration of using the Starburst Presto container to connect to multiple repositories.

You will need to modify the catalogs in the etc/catalog directory to connect to your data sources as discussed here: https://docs.starburstdata.com/latest/connector/starburst-connectors.html

This is a demo being shown at the Postgres Conference webinar, and more updates will come.

To use this, you must have Docker Desktop installed and a reasonable amount of RAM, at least 8GB. It will pull down a Starburst Presto container, add volumes to it, and configure it with the settings and connectors found in the etc directory. 

