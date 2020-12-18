# Overview
Mostly a toy to mess around with vim plugin creation. 
I'm following this tutorial: https://learnvimscriptthehardway.stevelosh.com/chapters/42.html to setup a vim based KQL/Kusto environment.

# Release Notes

## 0.2
- Now it's pivoted to just Kusto, but it's working great with my `kusto-cli` tool
- You can override the cluster url and DB in your `.vimrc` or in an open window with the following variables:
    - `g:kusto_cluster`
    - `g:kusto_db`
- AI stuff is removed for right now

## 0.1
- Works with app insights using `az cli` !
- Set your app insights ID (found on the `API Access` tab of an AI resource) using the ENV `KUSTO_APP_ID`
- then just run with `<localleader>r`, it'll run up and down and build the query

# TODO
- [x] Get a real kusto library and figure out auth (az cli is nice cause it's just cached user cred)
- [ ] Put results in new window (by default, make current an option?)
- [ ] Send multi-line maybe?
- [ ] Handle comments (remove them?)
  - Might be handled by moving to newline instead of space on the join? ([of interest](https://stackoverflow.com/questions/10526011/does-vimscript-allow-multi-line-strings))
- [ ] Handle single quotes in a query (need to escape)
- [ ] better error handling, if it exists from az cli?
- [ ] actually fill out doc
