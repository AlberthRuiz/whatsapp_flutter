import 'package:whatsapp_flutter/models/chat_messsage_model.dart';
import 'package:whatsapp_flutter/models/chat_model.dart';

List<ChatModel> chats = [
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "Juan",
    message: "Gracias por el recado",
    time: "10:30",
    countMessage: 3,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/445109/pexels-photo-445109.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "Maria",
    message: "Te envie el detalle del trabajo",
    time: "09:30",
    countMessage: 2,
    isTyping: true,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/845457/pexels-photo-845457.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "Manuel",
    message: "Mañana en la reunión lo rveisamos",
    time: "10:30",
    countMessage: 12,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    username: "Fiorella Diaz",
    message: "El dato es incorrecto",
    time: "12:30",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Ximena Lopez",
    message: "Ya he enviando el encargo por el courier",
    time: "10:20",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/4922971/pexels-photo-4922971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Juan Carlos Lopez",
    message: "Acabo de llegar a la reunión, por favor envia eso",
    time: "12:40",
    countMessage: 3,
    isTyping: true,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Karla Gonzales",
    message: "Flutter es genial!",
    time: "15:22",
    countMessage: 0,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/8422403/pexels-photo-8422403.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Daniel Montes Arias",
    message: "Hola, cómo estas?",
    time: "11:22",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarUrl:
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    username: "Ximena Lopez",
    message: "Ya he enviando el encargo por el courier",
    time: "10:20",
    countMessage: 1,
    isTyping: false,
  ),
];

List<ChatMessageModel> chatMeesageList = [
  ChatMessageModel(
    messageContent: "Hola, esta bien todo por aca",
    messageType: "me",
  ),
  ChatMessageModel(
    messageContent: "Si, bien",
    messageType: "other",
  ),
  ChatMessageModel(
    messageContent: "Holaa, estoy muy bien, ando aprendiendo Flutter?",
    messageType: "me",
  ),
  ChatMessageModel(
    messageContent: "Y tú qué haces?",
    messageType: "me",
  ),
  ChatMessageModel(
    messageContent: "Estoy revisando unas cosas",
    messageType: "other",
  ),
  ChatMessageModel(
    messageContent: "Creo que terminaré en un rato",
    messageType: "other",
  ),
];
