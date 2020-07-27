package ${packageName};

public class ${manger_name} extends BaseViewHolderManager< UniqueItemManager > {
    FragmentManager manager;


    public ${manger_name} (FragmentManager manager) {
    this.manager = manager;
    }

    @Override
    public void onBindViewHolder(BaseViewHolder holder, UniqueItemManager uniqueItemManager) {
    super.onCreateViewHolder(holder);
    FragmentShowUtils.showFragment(${fragment_name}.class.getName(), manager, ${frame_id});
    }

    @Override
    protected int getItemLayoutId() {
    return R.layout.fr_${layout_name};
    }
}