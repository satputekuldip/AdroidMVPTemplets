package ${packageName};

import android.content.Context;
import android.content.Intent;
import ${superClassFqcn};
import android.os.Bundle;

import javax.inject.Inject;

import ${applicationPackage}.R;
import ${applicationPackage}.ui.base.BaseActivity;

import butterknife.BindView;
import butterknife.ButterKnife;

/**
 * Created by Kuldip on 21/05/20.
 */

public class ${activityClass} extends BaseActivity implements ${activityClass}MvpView {

	public static final String TAG = "${activityClass}";
    
	@Inject
    ${activityClass}MvpPresenter<${activityClass}MvpView> mPresenter;
	
	public static Intent getStartIntent(Context context) {
        Intent intent = new Intent(context, ${activityClass}.class);
        return intent;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
</#if>

        getActivityComponent().inject(this);

        setUnBinder(ButterKnife.bind(this));

        mPresenter.onAttach(this);

        setUp();
    }

    @Override
    protected void setUp() {
    }

    @Override
    protected void onDestroy() {
        mPresenter.onDetach();
        super.onDestroy();
    }
}
