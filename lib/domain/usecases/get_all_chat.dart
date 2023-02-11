import 'package:flutter_app/domain/entities/chats.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class GetChatsUseCaseParams {}

class GetChatsUseCaseResponse {
  final List<Chat> chats;
  GetChatsUseCaseResponse(this.chats);
}

class GetChatUseCase extends UseCase<GetChatsUseCaseResponse, GetChatsUseCaseParams>{
  @override
  Future<Stream<GetChatsUseCaseResponse>> buildUseCaseStream(GetChatsUseCaseParams params) {
    // TODO: implement buildUseCaseStream
    throw UnimplementedError();
  }

}