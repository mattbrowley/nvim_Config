let g:ale_fixers = {
    \    '*': ['remove_trailing_lines', 'trim_whitespace'],
    \    'python': ['black']
    \}
let g:ale_fix_on_save = 1