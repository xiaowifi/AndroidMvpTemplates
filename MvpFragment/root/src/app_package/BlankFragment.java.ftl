package ${packageName};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ${applicationPackage}.R;

/**
 * 创建时间:
 * author:yangfan
 * 描述：
 */

public class ${className} extends  LyMvpBaseFragment<${mvpView},${mvpPresenter}<${mvpView}>> implements ${mvpView} {

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
<#if includeLayout>
        return inflater.inflate(R.layout.${fragmentName}, container, false);
</#if>
    }


    @Override
    public ${mvpPresenter}<${mvpView}> createPresenter() {
    return new ${mvpPresenter}<${mvpView}>();
    }
}
