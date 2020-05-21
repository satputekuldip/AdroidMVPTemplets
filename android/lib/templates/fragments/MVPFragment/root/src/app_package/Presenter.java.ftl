package ${packageName};


import ${applicationPackage}.ui.base.BasePresenter;
import ${applicationPackage}.utils.rx.SchedulerProvider;
import ${applicationPackage}.data.DataManager;
import io.reactivex.disposables.CompositeDisposable;

import javax.inject.Inject;

public class ${className}Presenter <V extends ${className}MvpView> extends BasePresenter<V> 
        implements ${className}MvpPresenter<V> {

	private static final String TAG = "${className}Presenter";
	
    @Inject
    public ${className}Presenter(DataManager dataManager,
                         SchedulerProvider schedulerProvider,
                         CompositeDisposable compositeDisposable) {
        super(dataManager, schedulerProvider, compositeDisposable);
    }
}