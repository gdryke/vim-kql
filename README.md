Starting to follow this:
https://learnvimscriptthehardway.stevelosh.com/chapters/42.html

To setup a vim based KQL/Kusto environment.

Status:
- Works with app insights using `az cli` !
- Set your app insights ID (found on the `API Access` tab of an AI resource) using the ENV `KUSTO_APP_ID`
- then just run with `<localleader>r`, it'll run up and down and build the query

TODO:
- Get a real kusto library and figure out auth (az cli is nice cause it's just cached user cred)
- Handle comments (remove them?)
- Handle single quotes in a query (need to escape)
- better error handling, if it exists from az cli?
