import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import '../entities/status.dart';

class GetStatusUseCaseParams {}

class GetStatusUseCaseResponse {
  final List<Status> status;
  GetStatusUseCaseResponse(this.status);
}

class GetStatusUseCase extends UseCase<GetStatusUseCaseResponse, GetStatusUseCaseParams>{
  @override
  Future<Stream<GetStatusUseCaseResponse>> buildUseCaseStream(GetStatusUseCaseParams params) {
    // TODO: implement buildUseCaseStream
    throw UnimplementedError();
  }

}