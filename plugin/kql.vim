if ! exists('g:kusto_cluster')
    let g:kusto_cluster = $VIM_KUSTO_CLUSTER_URL
endif

if ! exists('g:kusto_db')
    let g:kusto_db = $VIM_KUSTO_DB
endif
