# Overview
Mostly a toy to mess around with vim plugin creation. 
I'm following this tutorial: https://learnvimscriptthehardway.stevelosh.com/chapters/42.html to setup a vim based KQL/Kusto environment.

# Release Notes
See the vimdoc for updated release notes.

# TODO
- [x] Send multi-line maybe?
- [x] Handle comments (remove them?)
  - Might be handled by moving to newline instead of space on the join? ([of interest](https://stackoverflow.com/questions/10526011/does-vimscript-allow-multi-line-strings))
- [x] Handle single quotes in a query (need to escape)
- [ ] better error handling, if it exists from az cli?
- [x] actually fill out doc
- [x] Put results in new window (by default, make current an option?)
- [x] Get a real kusto library and figure out auth (az cli is nice cause it's just cached user cred)
