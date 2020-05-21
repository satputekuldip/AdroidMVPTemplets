package ${packageName};


import ${applicationPackage}.ui.base.BasePresenter;
import ${applicationPackage}.utils.rx.SchedulerProvider;
import ${applicationPackage}.data.DataManager;
import io.reactivex.disposables.CompositeDisposable;

import javax.inject.Inject;

public class ${activityClass}Presenter <V extends ${activityClass}MvpView> extends BasePresenter<V> 
        implements ${activityClass}MvpPresenter<V> {

	private static final String TAG = "${activityClass}Presenter";
	
    @Inject
    public ${activityClass}Presenter(DataManager dataManager,
                         SchedulerProvider schedulerProvider,
                         CompositeDisposable compositeDisposable) {
        super(dataManager, schedulerProvider, compositeDisposable);
    }
}