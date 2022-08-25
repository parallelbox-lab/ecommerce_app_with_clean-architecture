import "package:equatable/equatable.dart";
import 'package:meta/meta.dart';

class Products extends Equatable {
  final String? productName;
  final String? productDesc;
  const Products({@required this.productName, @required this.productDesc});

      @override
      List<Object> get props => [productName!,productDesc!];
}
