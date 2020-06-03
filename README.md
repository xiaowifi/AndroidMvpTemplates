# AndroidMvpTemplates
基于本地项目的mvp设计模式 提供创建mvp相关文件能力。
##MvpActivity
    采用/Applications/IntelliJ\ IDEA.app/Contents/plugins/android/lib/templates/activities
    中的模板样式。如果需要使用 需要将整个MvpActivity文件夹存放到activities目录下
##MvpFragment和MvpViewPresenter
    采用/Applications/IntelliJ\ IDEA.app/Contents/plugins/android/lib/templates/fragment中的模板
    所以这两个文件夹需要存放到fragment目录下

##当前模板采用 阿帕奇freeMarker 
    globals 文件中的<#include "root://activities/common/common_globals.xml.ftl" /> 可以向上的 

####小声BB,想写MVVM,mvc快把项目写完了，然后要改成mvp，难受。搬砖不容易，加油吧