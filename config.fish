if status is-interactive
    # 定义自定义提示符
    function fish_prompt
        # 获取当前用户名
        set -l user (whoami)
        # 获取当前工作目录
        set -l cwd (prompt_pwd)
        # 设置提示符颜色
        set_color normal
        # 判断是否为超级用户
        if test $user = "root"
            # 超级用户提示符
            set_color red
            echo -n "# $cwd "
        else
            # 普通用户提示符
            set_color green
            echo -n "$cwd \$ "
        end
        # 重置颜色
        set_color normal
    end
end

