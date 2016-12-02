cheatsheet do
  title 'Git_CheatSheet_zh'
  docset_file_name 'Git_CheatSheet_zh'
  keyword 'git'
  source_url 'http://cheat.kapeli.com'

  category do
    id '专用名词'

    entry do
      name 'Workspace'
      notes '工作区'
    end

    entry do
      name 'Index / Stage'
      notes '暂存区'
    end

    entry do
      name 'Repository'
      notes '仓库区（或本地仓库）'
    end

    entry do
      name 'Remote'
      notes '远程仓库'
    end
  end

  category do
    id '创建'

    entry do
      name '复制一个已创建的仓库'
      notes '
        ```
        git clone ssh://user@domain.com/repo.git
        git clone git@domain.com:user/repo.git
        git clone https://domain.com/user/repo.git
        ```'
    end

    entry do
      name '在当前文件夹初始化一个空的版本库，若已存在版本库则将其重新初始化'
      notes '
      ```
      git init
      ```'
    end

    entry do
      name '新建一个目录，将其初始化为Git代码库'
      notes '
      ```
      git init [project-name]
      ```'
    end
  end

  category do
    id '配置'

    entry do
      name ''
      notes 'Git的设置文件为.gitconfig，它可以在用户主目录下（全局配置），也可以在项目目录下（项目配置）。'
    end

    entry do
      name '显示当前的Git配置'
      notes '
      ```
      git config -l
      git config --list
      ```'
    end

    entry do
      name '编辑Git配置文件'
      notes '
      ```
      git config -e [--global]
      ```'
    end

    entry do
      name '设置提交代码时的用户名（当前仓库或远程）'
      notes '
      ```
      git config [--global] user.name [name]
      ```'
    end

    entry do
      name '设置提交代码时的邮箱（当前仓库或远程）'
      notes '
      ```
      git config [--global] user.email [email]
      ```'
    end

    entry do
      name '获取提交代码时的用户名（当前仓库或远程）'
      notes '
      ```
      git config [--global] user.name
      ```'
    end

    entry do
      name '获取提交代码时的邮箱（当前仓库或远程）'
      notes '
      ```
      git config [--global] user.email
      ```'
    end

    entry do
      name 'git status等命令自动着色'
      notes '
      ```
      git config --global color.ui auto
      ```'
    end

    entry do
      name '查看所有指令帮助'
      notes '
      ```
      git help
      ```'
    end

    entry do
      name '查看某条指令，例如 config'
      notes '
      ```
      git config --help
      git help config
      ```'
    end
  end

  category do
    id '文件操作'

    entry do
      name '新建一个文件'
      notes '
      ```
      touch [file-name]
      ```'
    end

    entry do
      name '新建一个文件夹'
      notes '
      ```
      mkdir [dir-name]
      ```'
    end

    entry do
      name '查看一个文件'
      notes '
      ```
      cat [file-name]
      ```'
    end

    entry do
      name '编辑一个文件，编辑完成输入 ":wq" 保存退出'
      notes '
      ```
      vi [file-name]
      ```'
    end

    entry do
      name '添加指定文件到暂存区'
      notes '
      ```
      git add [file1] [file2] ...
      ```'
    end

    entry do
      name '添加指定目录到暂存区，包括子目录'
      notes '
      ```
      git add [dir1] [dir2] ...
      ```'
    end

    entry do
      name '添加当前目录的所有文件到暂存区'
      notes '
      ```
      git add .
      ```'
    end

    entry do
      name '添加每个变化前，都会要求确认，对于同一个文件的多处变化，可以实现分次提交'
      notes '
      ```
      git add -p [file]
      ```'
    end

    entry do
      name '改名文件，并且将这个改名放入暂存区'
      notes '
      ```
      git mv [file] [new file name]
      ```'
    end

    entry do
      name '删除工作区文件，并且将这次删除放入暂存区'
      notes '
      ```
      git rm [file1] [file2] ...
      ```'
    end

    entry do
      name '删除文件夹下的所有文件，并将此次操作放入暂存区（并不会删除文件夹）'
      notes '
      ```
      git rm -r [dir]
      ```'
    end

    entry do
      name '停止追踪指定文件，但该文件会保留在工作区'
      notes '
      ```
      git rm --cached [file]
      ```'
    end
  end

  category do
    id '代码提交'

    entry do
      name '提交之前已标记的修改'
      notes '
      ```
      git commit
      ```'
    end

    entry do
      name '提交本地的所有修改'
      notes '
      ```
      git commit -a
      ```'
    end

    entry do
      name '提交时显示所有diff信息'
      notes '
      ```
      git commit -v
      ```'
    end

    entry do
      name '提交暂存区到仓库区，附加消息提交'
      notes '
      ```
      git commit -m \"message here\"
      ```'
    end

    entry do
      name '提交暂存区的指定文件到仓库区，附加消息提交'
      notes '
      ```
      git commit [file] | [dir] ... -m  \"message here\"
      ```'
    end

    entry do
      name '修改上次提交'
      notes '
      ```
      git commit --amend
      ```
      提示：请勿修改已发布的提交记录'
    end

    entry do
      name '使用一次新的commit，替代上一次提交，如果代码没有任何新变化，则用来改写上一次commit的提交信息'
      notes '
      ```
      git commit --amend -m  \"message here\"
      ```'
    end

    entry do
      name '重做上一次commit，并包括指定文件的新变化'
      notes '
      ```
      git commit --amend [file1] [file2] ...
      ```'
    end
  end


  category do #完成
    id '分支'

    entry do
      name '列出所有本地分支'
      notes '
      ```
      git branch
      ```'
    end

    entry do
      name '列出所有远程分支'
      notes '
      ```
      git branch -r
      ```'
    end

    entry do
      name '列出所有本地分支和远程分支'
      notes '
      ```
      git branch -a
      ```'
    end

    entry do
      name '显示所有分支'
      notes '
      ```
      git branch -av
      ```'
    end

    entry do
      name '新建一个分支，但依然停留在当前分支'
      notes '
      ```
      git branch [new-branch]
      ```'
    end

    entry do
      name '新建一个分支，并切换到该分支'
      notes '
      ```
      git checkout -b [branch]
      ```'
    end

    entry do
      name '新建一个分支，指向指定commit'
      notes '
      ```
      git branch [branch] [commit]
      ```'
    end

    entry do
      name '新建一个分支，与指定的远程分支建立追踪关系'
      notes '
      ```
      git branch --track [new-branch] [remote-branch]
      ```'
    end

    entry do
      name '切换到指定分支，并更新工作区'
      notes '
      ```
      git checkout [branch]
      ```'
    end

    entry do
      name '切换到上一个分支'
      notes '
      ```
      git checkout -
      ```'
    end

    entry do
      name '建立追踪关系，在现有分支与指定的远程分支之间'
      notes '
      ```
      git branch --set-upstream [branch] [remote-branch]
      ```'
    end

    entry do
      name '合并指定分支到当前分支'
      notes '
      ```
      git merge [branch]
      ```'
    end

    entry do
      name '选择一个commit，合并进当前分支'
      notes '
      ```
      git cherry-pick [commit]
      ```'
    end

    entry do
      name '重命名本地分支'
      notes '
      ```
      git branch -m [old name] [new name]
      ```'
    end

    entry do
      name '重命名远程分支'
      notes '
      ```
      git push [remote] :[old name]
      git push [remote] [new name]

      ```'
    end

    entry do
      name '删除本地分支'
      notes '
      ```
      git branch -d [branch]
      ```'
    end

    entry do
      name '删除远程分支'
      notes '
      ```
      git push origin --delete [branch]
      git branch -dr [remote/branch]
      ```'
    end
  end


  category do #完成
    id '标签'

    entry do
      name '列出所有tag'
      notes '
      ```
      git tag
      ```'
    end

    entry do
      name '新建一个tag在当前commit'
      notes '
      ```
      git tag [tag-name]
      ```'
    end

    entry do
      name '新建一个tag在指定commit'
      notes '
      ```
      git tag [tag-name] [commit]
      ```'
    end

    entry do
      name '删除本地tag'
      notes '
      ```
      git tag -d [tag]
      ```'
    end

    entry do
      name '删除远程tag'
      notes '
      ```
      git push origin :refs/tags/[tagName]
      ```'
    end

    entry do
      name '查看tag信息'
      notes '
      ```
      git show [tag]
      ```'
    end

    entry do
      name '提交指定tag'
      notes '
      ```
      git push [remote] [tag]
      ```'
    end

    entry do
      name '提交所有tag'
      notes '
      ```
      git push [remote] --tags
      ```'
    end

    entry do
      name '新建一个分支，指向某个tag'
      notes '
      ```
      git checkout -b [branch] [tag]
      ```'
    end
  end


  category do #完成
    id '查看信息'

    entry do
      name '显示有变更的文件'
      notes '
      ```
      git status
      ```'
    end

    entry do
      name '显示工作路径下全部已修改的文件(紧凑的格式)'
      notes '
      ```
      git status -s
      git status --short
      ```'
    end

    entry do
      name '从最新提交开始，显示所有的提交记录（显示hash， 作者信息，提交的标题和时间）'
      notes '
      ```
      git log
      ```'
    end

    entry do
      name '显示commit历史，以及每次commit发生变更的文件'
      notes '
      ```
      git log --stat
      ```'
    end

    entry do
      name '显示所有提交（仅显示提交的hash和message）'
      notes '
      ```
      git log --oneline
      ```'
    end

    entry do
      name '搜索提交历史，根据关键词'
      notes '
      ```
      git log -S [keyword]
      ```'
    end

    entry do
      name '显示某个commit之后的所有变动，每个commit占据一行'
      notes '
      ```
      git log [tag] HEAD --pretty=format:%s
      ```'
    end

    entry do
      name '显示某个commit之后的所有变动，其"提交说明"必须符合搜索条件'
      notes '
      ```
      git log [tag] HEAD --grep feature
      ```'
    end

    entry do
      name '显示某个文件的版本历史，包括文件改名'
      notes '
      ```
      git log --follow [file]
      git whatchanged [file]
      ```'
    end

    entry do
      name '显示指定文件的所有修改'
      notes '
      ```
      git log -p [file]
      ```'
    end

    entry do
      name '显示过去5次提交'
      notes '
      ```
      git log -5 --pretty --oneline
      ```'
    end

    entry do
      name '显示所有提交过的用户，按提交次数排序'
      notes '
      ```
      git shortlog -sn
      ```'
    end

    entry do
      name '显示某个用户的所有提交'
      notes '
      ```
      git log --author=[username]
      ```'
    end

    entry do
      name '搜索指定关键字的提交日志'
      notes '
      ```
      git log --grep=[string]
      ```'
    end

    entry do
      name '谁，在什么时间，修改了文件的什么内容'
      notes '
      ```
      git blame [file]
      ```'
    end

    entry do
      name '显示暂存区和工作区的差异'
      notes '
      ```
      git diff
      ```'
    end

    entry do
      name '显示暂存区和上一个commit的差异'
      notes '
      ```
      git diff --cached [file]
      ```'
    end

    entry do
      name '显示工作区与当前分支最新commit之间的差异'
      notes '
      ```
      git diff HEAD
      ```'
    end

    entry do
      name '显示两次提交之间的差异'
      notes '
      ```
      git diff [first-branch]...[second-branch]
      ```'
    end

    entry do
      name '显示今天你写了多少行代码'
      notes '
      ```
      git diff --shortstat \"@{0 day ago}\"
      ```'
    end

    entry do
      name '显示某次提交的元数据和内容变化'
      notes '
      ```
      git show [commit]
      ```'
    end

    entry do
      name '显示某次提交发生变化的文件'
      notes '
      ```
      git show --name-only [commit]
      ```'
    end

    entry do
      name '显示某次提交时，某个文件的内容'
      notes '
      ```
      git show [commit]:[filename]
      ```'
    end

    entry do
      name '显示当前分支的最近几次提交'
      notes '
      ```
      git reflog
      ```'
    end

    entry do
      name '停止追踪指定文件，但该文件会保留在工作区'
      notes '
      ```
      git rm --cached [file]
      ```'
    end
  end

  category do #完成
    id '更新与发布'

    entry do
      name '下载远程端的所有改动到本地，不会自动合并到HEAD中'
      notes '
      ```
      git fetch [remote]
      ```'
    end

    entry do
      name '列出当前配置的远程端，显示远程仓库地址'
      notes '
      ```
      git remote -v
      ```'
    end

    entry do
      name '显示远程端信息'
      notes '
      ```
      git remote show [remote]
      ```'
    end

    entry do
      name '添加新的远程端'
      notes '
      ```
      git remote add [remote] [url]
      ```'
    end

    entry do
      name '重命名远程端'
      notes '
      ```
      git remote rename [old-name] [new-name]
      ```'
    end

    entry do
      name '下载远程端版本，并自动与HEAD版本合并'
      notes '
      ```
      git remote pull [remote] [url]
      ```'
    end

    entry do
      name '将远程端版本合并到本地版本中'
      notes '
      ```
      git pull origin master
      git pull [remote] [branch]
      ```'
    end

    entry do
      name '将本地版本发布到远程端'
      notes '
      ```
      git push [remote] [branch]
      ```'
    end

    entry do
      name '强行推送当前分支到远程仓库，即使有冲突'
      notes '
      ```
      git push [remote] --force
      ```'
    end

    entry do
      name '推送所有分支到远程仓库'
      notes '
      ```
      git push [remote] --all
      ```'
    end

    entry do
      name '删除远程端分支'
      notes '
      ```
      git push [remote] :[branch] (since Git v1.5.0)
      git push [remote] --delete [branch] (since Git v1.7.0)
      ```
      '
    end

    entry do
      name '发布标签'
      notes '
      ```
      git push --tags
      ```'
    end

  end

  category do #完成
    id '撤销'

    entry do
      name '放弃某个文件的所有本地修改'
      notes '
      ```
      git checkout HEAD [file]
      ```'
    end

    entry do
      name '恢复暂存区的指定文件到工作区'
      notes '
      ```
      git checkout [file]
      ```'
    end

    entry do
      name '恢复某个commit的指定文件到暂存区和工作区'
      notes '
      ```
      git checkout [commit] [file]
      ```'
    end

    entry do
      name '恢复暂存区的所有文件到工作区'
      notes '
      ```
      git checkout .
      ```'
    end

    entry do
      name '移除缓存区的所有文件（i.e. 撤销上次git add）'
      notes '
      ```
      git reset HEAD
      ```'
    end

    entry do
      name '放弃工作目录下的所有修改'
      notes '
      ```
      git reset --hard HEAD
      ```'
    end

    entry do
      name '重置暂存区的指定文件，与上一次commit保持一致，但工作区不变'
      notes '
      ```
      git reset [file]
      ```'
    end

    entry do
      name '重置暂存区与工作区，与上一次commit保持一致'
      notes '
      ```
      git reset --hard
      ```'
    end

    entry do
      name '重置当前分支的指针为指定commit，同时重置暂存区，但工作区不变'
      notes '
      ```
      git reset [commit]
      ```'
    end

    entry do
      name '重置当前分支的HEAD为指定commit，同时重置暂存区和工作区，与指定commit一致'
      notes '
      ```
      git reset --hard [commit]
      ```'
    end

    entry do
      name '重置当前HEAD为指定commit，但保持暂存区和工作区不变'
      notes '
      ```
      git reset --keep [commit]
      ```'
    end

    entry do
      name '新建一个commit，用来撤销指定commit，后者的所有变化都将被前者抵消，并且应用到当前分支'
      notes '
      ```
      git revert [commit]
      ```'
    end

    entry do
      name '暂时将未提交的变化移除，稍后再移入'
      notes '
      ```
      git stash
      git stash pop
      ```'
    end
  end


  category do
    id '合并与重置'

    entry do
      name '将分支合并到当前HEAD中'
      notes '
      ```
      git merge [branch]
      ```'
    end

    entry do
      name '将当前HEAD版本重置到分支中'
      notes '
      ```
      git rebase [branch]
      ```
      提示: 请勿重置已发布的提交！'
    end

    entry do
      name '退出重置'
      notes '
      ```
      git rebase --abort
      ```'
    end

    entry do
      name '解决冲突后继续重置'
      notes '
      ```
      git rebase --continue
      ```'
    end

    entry do
      name '使用配置好的merge tool解决冲突'
      notes '
      ```
      git mergetool
      ```'
    end

    entry do
      name '在编辑器中手动解决冲突后，标记文件为已解决冲突'
      notes <<-'END'
        ```bash
        git add [resolved-file]
        git rm [resolved-file]
        ```
      END
    end
  end

  category do
    id '其他'

    entry do
      name '生成一个可供发布的压缩包'
      notes '
      ```
      git archive
      ```'
    end

    entry do
      name '列出当前配置的远程端，显示远程仓库地址'
      notes '
      ```
      git remote -v
      ```'
    end

    entry do
      name '更换远程仓库地址'
      notes '
      先查看remote的名字

      ```
      git branch -r
      ```

      假设你的remote是origin，用git remote set_url 更换地址

      ```
      git remote set-url [origin] [remote_address]
      ```

      remote_address更换成你的新的仓库地址'
    end

    entry do
      name '从别的Git托管服务那里复制一份源代码到新的Git托管服务器，要求能保留原先的commit记录'
      notes '
      1). 从原地址克隆一份裸版本库，比如原本托管于 GitHub。

      ```
      git clone --bare git://github.com/username/project.git
      ```

      2). 然后到新的 Git 服务器上创建一个新项目，比如 GitCafe。

      3). 以镜像推送的方式上传代码到 GitCafe 服务器上。

      ```
      cd project.git
      git push --mirror git@gitcafe.com/username/newproject.git
      ```

      4). 删除本地代码

      ```
      cd ..
      rm -rf project.git
      ```

      5). 到新服务器 GitCafe 上找到 Clone 地址，直接 Clone 到本地就可以了。

      ```
      git clone git@gitcafe.com/username/newproject.git
      ```

      这种方式可以保留原版本库中的所有内容。'
    end
  end

end
