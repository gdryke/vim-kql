if exists("b:current_syntax")
    finish
endif

syntax keyword kqlKeyword |
highlight link kqlKeyword Keyword

" weird other ones?
syntax keyword kqlFunction by asc desc count by bin  on
" https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/scalarfunctions
syntax keyword kqlFunction abs acos ago array_concat array_iif array_index_of
syntax keyword kqlFunction array_length array_reverse array_rotate_left array_rotate_right
syntax keyword kqlFunction array_shift_left array_shift_right array_slice array_sort_asc
syntax keyword kqlFunction array_sort_desc array_split asin assert
syntax keyword kqlFunction atan atan2 bag_keys bag_merge
syntax keyword kqlFunction bag_remove_keys base64_decode_toarray base64_decode_tostring base64_encode_fromarray
syntax keyword kqlFunction base64_encode_tostring beta_cdf beta_inv beta_pdf
syntax keyword kqlFunction bin bin_at bin_auto binary_and
syntax keyword kqlFunction binary_not binary_or binary_shift_left binary_shift_right
syntax keyword kqlFunction binary_xor bitset_count_ones case ceiling
syntax keyword kqlFunction coalesce column_ifexists cos cot
syntax keyword kqlFunction countof current_cluster_endpoint current_cursor current_database
syntax keyword kqlFunction current_principal current_principal_details current_principal_is_member_of cursor_after
syntax keyword kqlFunction cursor_before_or_at cursor_current datetime_add datetime_diff
syntax keyword kqlFunction datetime_part dayofmonth dayofweek dayofyear
syntax keyword kqlFunction dcount_hll degrees dynamic_to_json endofday
syntax keyword kqlFunction endofmonth endofweek endofyear estimate_data_size
syntax keyword kqlFunction exp exp10 exp2 extent_id
syntax keyword kqlFunction extent_tags extract extract_all extractjson
syntax keyword kqlFunction floor format_bytes format_datetime format_ipv4
syntax keyword kqlFunction format_ipv4_mask format_timespan gamma getmonth
syntax keyword kqlFunction gettype getyear hash hash_combine
syntax keyword kqlFunction hash_many hash_md5 hash_sha256 hll_merge
syntax keyword kqlFunction hourofday iif indexof indexof_regex
syntax keyword kqlFunction ingestion_time ipv4_compare ipv4_is_match ipv4_is_private
syntax keyword kqlFunction ipv6_compare ipv6_is_match isascii isempty
syntax keyword kqlFunction isfinite isinf isnan isnotempty notempty
syntax keyword kqlFunction isnotnull notnull isnull isutf8 log
syntax keyword kqlFunction log10 log2 loggamma make_datetime
syntax keyword kqlFunction make_string make_timespan max_of min_of
syntax keyword kqlFunction monthofyear new_guid not now
syntax keyword kqlFunction pack pack_all pack_array pack_dictionary
syntax keyword kqlFunction parse_command_line parse_csv parse_ipv4 parse_ipv4_mask
syntax keyword kqlFunction parse_ipv6 parse_ipv6_mask parse_json parse_path
syntax keyword kqlFunction parse_url parse_urlquery parse_user_agent parse_version
syntax keyword kqlFunction parse_xml percentile_tdigest percentrank_tdigest pi
syntax keyword kqlFunction pow radians rand range
syntax keyword kqlFunction rank_tdigest repeat replace reverse
syntax keyword kqlFunction round set_difference set_has_element set_intersect
syntax keyword kqlFunction set_union sign sin split
syntax keyword kqlFunction sqrt startofday startofmonth startofweek
syntax keyword kqlFunction startofyear strcat strcat_array strcat_delim
syntax keyword kqlFunction strcmp string_size strlen strrep
syntax keyword kqlFunction substring tan tdigest_merge to_utf8
syntax keyword kqlFunction tobool todatetime todecimal todouble toreal
syntax keyword kqlFunction todynamic toobject toguid tohex toint
syntax keyword kqlFunction tolong tolower tostring totimespan
syntax keyword kqlFunction toupper translate treepath trim
syntax keyword kqlFunction trim_end trim_start unixtime_microseconds_todatetime unixtime_milliseconds_todatetime
syntax keyword kqlFunction unixtime_nanoseconds_todatetime unixtime_seconds_todatetime url_decode url_encode
syntax keyword kqlFunction url_encode_component weekofyear welch_test zip zlib_compress_to_base64_string zlib_decompress_from_base64_string

syntax keyword kqlFunction timechart barchart areachart
" joins
syntax keyword kqlFunction outer inner leftouter leftinner rightouter rightinner full
highlight link kqlFunction PreProc


syntax match kqlOperator "\v\+"
syntax match kqlOperator "\v\*"
syntax match kqlOperator "\v\-"
syntax match kqlOperator "\v\=\~"
syntax match kqlOperator "\v\="
syntax match kqlOperator "\v/"
syntax match kqlOperator "\v\>"
syntax match kqlOperator "\v\<"
syntax keyword kqlOperator !contains
syntax keyword kqlOperator contains
syntax keyword kqlOperator and
syntax keyword kqlOperator or

highlight link kqlOperator Operator

syntax match kqlComment "\v\/\/.*$"
highlight link kqlComment Comment

" https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/queries
syntax keyword kqlType as consume datatable distinct evaluate extend
syntax keyword kqlType externaldata facet find fork getschema invoke join
"syntax keyword kqlType limit lookup make-series mv-apply mv-expand order project
"syntax keyword kqlType project-reorder project-rename project-keep project-away
"syntax keyword kqlType reduce range print partition parse-where parse
"syntax keyword kqlType sort serialize search sample-distinct sample render
"syntax keyword kqlType take where union top-hitters top-nested top take summarize
highlight link kqlType Type

syntax match kqlConstant "\v[0-9]([0-9]|d|h|s|m)*"
highlight link kqlConstant Constant

syntax region kqlString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region kqlString start=/\v'/ skip=/\v\\./ end=/\v'/
highlight link kqlString String

let b:current_syntax = "kql"
