import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterBloc extends Cubit<int>{
  CounterBloc({this.init = 0}): super(init);
  int init;

  void increment()  {
    emit(state+1);
    }

  void decrement() {
    emit(state-1);
    }

  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print(error);
  }

  void showtoastitems(){
    Fluttertoast.showToast(msg: "Add at least one item",
    fontSize: 12,
    textColor: Colors.grey,
    gravity: ToastGravity.TOP,
    backgroundColor: const Color(0xffFFE3B8),
    );
  }
  void showtoastamount(){
    Fluttertoast.showToast(msg: "Cannot be less than zero",
    fontSize: 12,
    textColor: Colors.grey,
    gravity: ToastGravity.TOP,
    backgroundColor: const Color(0xffFFE3B8),
    );
  }
  void showtoastmuchMoney(){
    Fluttertoast.showToast(msg: "The amount of money is not enough",
    fontSize: 12,
    textColor: Colors.grey,
    gravity: ToastGravity.TOP,
    backgroundColor: const Color(0xffFFE3B8),
    );
  }
  void showtoastpurchase(){
    Fluttertoast.showToast(msg: "Your purchase has been successful",
    fontSize: 12,
    textColor: Colors.grey,
    gravity: ToastGravity.TOP,
    backgroundColor: const Color(0xffFFE3B8),
    );
  }
}