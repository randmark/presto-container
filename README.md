# presto-container
 
Presto Container is a self-contained demonstration of using the Starburst Presto container to connect to multiple repositories. Presto is a great little technology that lets you query multiple data sources at once as if they were all part of the same data source, removing the need to ETL data between them to run queries.

This is a very tiny demo, meant to only show the functionality, so it merges the Coordinator with a Worker in the same container. This is not a good idea in production but great for a demo. When you run this in a data center, you can have any number of worker nodes. 

Check out Starburst Presto on http://starburstdata.com if you want more info.

You will need to modify the catalogs in the etc/catalog directory to connect to your data sources as discussed here: https://docs.starburstdata.com/latest/connector/starburst-connectors.html

The data sources in this demo are particular to this laptop and AWS instance in the demonstration. You can learn to 

This is a demo being shown at the Postgres Conference webinar. It was created on a Mac with Docker Desktop for Mac installed, as well as Kitematic, which makes things easier to deal with.

To use this, you must have Docker Desktop installed and a reasonable amount of RAM, at least 8GB. It will pull down a Starburst Presto container, add volumes to it, and configure it with the settings and connectors found in the etc directory. It might not work properly on Windows Machines yet, unless you have the requisite Unix extensions.

Once you've downloaded it, just run run-presto-container-demo.sh and it will start a little container that will try to connect to all data sources listed. Then, use your favorite SQL tool to query the data sources.

Have fun.
