import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'viewmodel/all_vm.dart';
import './constant/constants.dart';

List<SingleChildWidget> providers = [
  ...independentServices,
];

List<SingleChildWidget> independentServices = [
  Provider.value(value: Map<String, dynamic>()),
];
