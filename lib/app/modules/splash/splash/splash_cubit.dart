import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calender_events/app/modules/splash/splash/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
	SplashCubit() : super(SplashState(isLoading: true));
	
	Future<void> loadInitialData() async {
		final stableState = state;
		try {
		  emit(state.copyWith(isLoading: true));
	
		  // TODO your code here
	
		  emit(state.copyWith(isLoading: false));
		} catch (error) {
		  emit(state.copyWith(error: error.toString()));
		  emit(stableState.copyWith(isLoading: false));
		}
	}
}
