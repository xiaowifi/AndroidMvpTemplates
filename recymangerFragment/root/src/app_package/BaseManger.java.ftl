package ${packageName};

import android.support.v4.app.FragmentManager;

import com.base.utils.FragmentShowUtils;
import com.freelib.multiitem.adapter.holder.BaseViewHolder;
import com.freelib.multiitem.adapter.holder.BaseViewHolderManager;
import com.freelib.multiitem.item.UniqueItemManager;

public class ${manger_name} extends BaseViewHolderManager< UniqueItemManager > {
    FragmentManager manager;


    public ${manger_name} (FragmentManager manager) {
    this.manager = manager;
    }

    @Override
    public void onBindViewHolder(BaseViewHolder holder, UniqueItemManager uniqueItemManager) {
    super.onCreateViewHolder(holder);
    FragmentShowUtils.showFragment(${fragment_name}.class.getName(), manager,R.id.${frame_id});
    }

    @Override
    protected int getItemLayoutId() {
    return R.layout.${layout_name};
    }
}