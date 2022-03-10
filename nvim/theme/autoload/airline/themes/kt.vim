let g:airline#themes#kt#palette = {}

let s:black = '#1c2525'
let s:bright_black = '#3a4949'
let s:white = '#d6e5e9'
let s:dark_cyan = '#537178'
let s:red = '#c8233b'
let s:bright_green = '#bbe555'
let s:green = '#6ee062'
let s:blue = '#359db0'
let s:cyan = '#68cbe8'
let s:bright_magenta = '#b1b0fc'

let s:black_term = '16'
let s:bright_black_term = '59'
let s:white_term = '188'
let s:dark_cyan_term = '60'
let s:red_term = '161'
let s:bright_green_term = '149'
let s:green_term = '112'
let s:blue_term = '73'
let s:cyan_term = '80'
let s:bright_magenta_term = '147'

let s:NMain = [s:black, s:blue, s:black_term, s:blue_term]
let s:NRight = [s:white, s:bright_black, s:white_term, s:bright_black_term]
let s:NMiddle = [s:white, s:black, s:white_term, s:black_term]
let s:NWarn = [s:bright_green, s:black, s:bright_green_term, s:black_term]
let s:NError = [s:red, s:black, s:red_term, s:black_term]
let g:airline#themes#kt#palette.normal = airline#themes#generate_color_map(s:NMain, s:NRight, s:NMiddle)
let g:airline#themes#kt#palette.normal.airline_warning = s:NWarn
let g:airline#themes#kt#palette.normal.airline_error = s:NError
let g:airline#themes#kt#palette.normal_modified = {
  \ 'airline_c': [s:black, s:dark_cyan, s:black_term, s:dark_cyan_term],
  \ }

let s:IMain = [s:black, s:green, s:black_term, s:green_term]
let s:IRight = [s:white, s:bright_black, s:white_term, s:bright_black_term]
let s:IMiddle = [s:white, s:black, s:white_term, s:black_term]
let s:IWarn = [s:bright_green, s:black, s:bright_green_term, s:black_term]
let s:IError = [s:red, s:black, s:red_term, s:black_term]
let g:airline#themes#kt#palette.insert = airline#themes#generate_color_map(s:IMain, s:IRight, s:IMiddle)
let g:airline#themes#kt#palette.insert.airline_warning = s:IWarn
let g:airline#themes#kt#palette.insert.airline_error = s:IError
let g:airline#themes#kt#palette.insert_modified = {
  \ 'airline_c': [s:black, s:dark_cyan, s:black_term, s:dark_cyan_term],
  \ }

let s:RMain = [s:black, s:bright_magenta, s:black_term, s:bright_magenta_term]
let s:RRight = [s:white, s:bright_black, s:white_term, s:bright_black_term]
let s:RMiddle = [s:white, s:black, s:white_term, s:black_term]
let s:RWarn = [s:bright_green, s:black, s:bright_green_term, s:black_term]
let s:RError = [s:red, s:black, s:red_term, s:black_term]
let g:airline#themes#kt#palette.replace = airline#themes#generate_color_map(s:RMain, s:RRight, s:RMiddle)
let g:airline#themes#kt#palette.replace.airline_warning = s:RWarn
let g:airline#themes#kt#palette.replace.airline_error = s:RError
let g:airline#themes#kt#palette.replace_modified = {
  \ 'airline_c': [s:black, s:dark_cyan, s:black_term, s:dark_cyan_term],
  \ }

let s:VMain = [s:black, s:cyan, s:black_term, s:cyan_term]
let s:VRight = [s:white, s:bright_black, s:white_term, s:bright_black_term]
let s:VMiddle = [s:white, s:black, s:white_term, s:black_term]
let s:VWarn = [s:bright_green, s:black, s:bright_green_term, s:black_term]
let s:VError = [s:red, s:black, s:red_term, s:black_term]
let g:airline#themes#kt#palette.visual = airline#themes#generate_color_map(s:VMain, s:VRight, s:VMiddle)
let g:airline#themes#kt#palette.visual.airline_warning = s:VWarn
let g:airline#themes#kt#palette.visual.airline_error = s:VError
let g:airline#themes#kt#palette.visual_modified = {
  \ 'airline_c': [s:black, s:dark_cyan, s:black_term, s:dark_cyan_term],
  \ }

let s:IAMain = [s:white, s:dark_cyan, s:black_term, s:dark_cyan_term]
let s:IARight = [s:white, s:bright_black, s:white_term, s:bright_black_term]
let s:IAMiddle = [s:white, s:black, s:white_term, s:black_term]
let s:IAWarn = [s:bright_green, s:black, s:bright_green_term, s:black_term]
let s:IAError = [s:red, s:black, s:red_term, s:black_term]
let g:airline#themes#kt#palette.inactive = airline#themes#generate_color_map(s:IAMain, s:IARight, s:IAMiddle)
let g:airline#themes#kt#palette.inactive.airline_warning = s:IAWarn
let g:airline#themes#kt#palette.inactive.airline_error = s:IAError

let g:airline#themes#kt#palette.normal.airline_term = s:NMiddle
let g:airline#themes#kt#palette.insert.airline_term = s:IMiddle
let g:airline#themes#kt#palette.replace.airline_term = s:RMiddle
let g:airline#themes#kt#palette.visual.airline_term = s:VMiddle
let g:airline#themes#kt#palette.inactive.airline_term = s:IAMiddle
