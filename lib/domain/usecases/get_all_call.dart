import 'package:flutter_app/domain/entities/call.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class GetCallUseCaseParams {}

class GetCallUseCaseResponse {
  final List<Call> calls;
  GetCallUseCaseResponse(this.calls);
}

class GetCallUseCase extends UseCase<GetCallUseCaseResponse, GetCallUseCaseParams>{
  @override
  Future<Stream<GetCallUseCaseResponse>> buildUseCaseStream(GetCallUseCaseParams params) {
    // TODO: implement buildUseCaseStream
    throw UnimplementedError();
  }

}