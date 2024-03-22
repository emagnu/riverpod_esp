//   ///
//  Import LIBRARIES
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
//  PARTS

part 'todos_providers.g.dart';
//  PROVIDERS

enum FilterType { all, completed, pending }

@riverpod
class TodoCurrentFilter extends _$TodoCurrentFilter {
  @override
  FilterType build() {
    return FilterType.all;
  }

  void setCurrentFilter(FilterType newFilter) {
    state = newFilter;
  }
}


//  ///


