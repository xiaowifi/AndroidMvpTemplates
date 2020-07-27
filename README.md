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

##recyleMangerFragment
   因为某种原因，需要使用recyleView +fragment 实现动态效果。<br/>
   其实好像用view也可以实现哈。view 的先放一放，先用fragment实现再说吧。<br/>
###思路
    ：因为fragmentmanger加载fragment是需要id的，但是recycle中的每个item的iD是一样的，所以需要不用的item。
      所以模板需要：
        fragment name
        manger name
        layout name
        id

嗯，这个复用性太差了[手动狗头]
[滑稽.png]