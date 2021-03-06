import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// We got this code as external help

class AuthService{
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  
  Future<User?> signIn(String email, String password) async{
    var user = await auth.signInWithEmailAndPassword(email: email, password: password);
    return user.user;
  }
  signOut() async{
    return await auth.signOut();
  }

}