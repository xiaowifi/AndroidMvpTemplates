package ${packageName};


public class ${activityClass} extends BaseMvpActivity<${mvpView}, ${mvpPresenter}> implements ${mvpPresenter} {

    @Override
    public int setLayoutResource() {
        return R.layout.${layoutName};
    }

    @NonNull
    @Override
    public BusinessDetailPresenter createPresenter() {
        return new ${mvpPresenter}();
    }
}
