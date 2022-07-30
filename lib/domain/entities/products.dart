import "package:equatable/equatable.dart";
import 'package:meta/meta.dart';

class Products extends Equatable {
  final String? productName;
  final String? productDesc;
  Products({@required this.productName, @required this.productDesc})
      : super([productDesc, productName]);
}
