import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  Future<void> addQuizData(Map quizData, String quizId) async {
    await Firestore.instance
        .collection("Quiz")
        .document(quizId)
        .setData(quizData)
        .catchError((e) {
      print(e);
    });
  }

  Future<void> addQuestionData(quizData, String quizId) async {
    await Firestore.instance
        .collection("Quiz")
        .document(quizId)
        .collection("QNA")
        .add(quizData)
        .catchError((e) {
      print(e);
    });
  }

  getQuizezData() async {
    return await Firestore.instance.collection("Quiz").snapshots();
  }

  getQuizData(String quizId) async{
    return await Firestore.instance
        .collection("Quiz")
        .document(quizId)
        .collection("QNA")
        .getDocuments();
  }
}