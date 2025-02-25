import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mogawe/modules/auth/repositories/profile_repository.dart';
import 'package:mogawe/modules/profile/blocs/profile_event.dart';
import 'package:mogawe/modules/profile/blocs/profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {

  late ProfileRepository _repo;

  ProfileBloc() : super(InitProfileState()) {
    _repo = ProfileRepository.instance;
  }

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async*{
    if (event is GetProfileEvent) {
      yield ShowLoadingProfileState();
      try {
        var data = await _repo.getProfile();
        yield ShowProfileData(data.object!);
      } catch(ex) {
        yield ShowErrorProfileState("$ex");
      }
    }
    if (event is DoUpdateProfileEvent) {
      yield ShowLoadingProfileState();
      try {
        var msg = await _repo.updateProfile(event.map);
        var data = await _repo.getProfile();
        yield SuccessUpdateProfileState(msg.message, data.object!);
      } catch(ex) {
        yield ShowErrorProfileState("$ex");
      }
    }
    if (event is DoUpdateTargetRevenueEvent) {
      yield ShowLoadingProfileState();
      try {
        var msg = await _repo.updateTargetRevenue(event.map);
        var data = await _repo.getProfile();
        yield SuccessUpdateTargetRevenueState(msg.message, data.object!);
      } catch(ex) {
        print("Error $ex ");
        yield ShowErrorProfileState("$ex");
      }
    }
  }
}