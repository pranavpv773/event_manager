import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calender_events/app/modules/home/home/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
	HomeCubit() : super(HomeState(isLoading: true));
	
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
