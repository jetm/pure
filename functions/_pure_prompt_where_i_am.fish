function _pure_prompt_where_i_am
    set --local where_branch_color "$pure_color_gray"
    set --local dotfiles_br (command git -C $HOME/repos/dotfiles symbolic-ref --short HEAD)
    set --local home "H"
    set --local work "W"

    if test "$dotfiles_br" = "master"
        echo "$where_branch_color$home"
    else
        echo "$where_branch_color$work"
    end
end
