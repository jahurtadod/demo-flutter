import 'package:fluro/fluro.dart';
import 'package:flutter_application_1/ui/views/counter_provider_view.dart';
import 'package:flutter_application_1/ui/views/counter_view.dart';
import 'package:flutter_application_1/ui/views/view_404.dart';

// Handlers
final Handler counterHandler = Handler(handlerFunc: (context, params) {
  return CounterView(
    base: params['base']?[0] ?? '5',
  );
});
final Handler counterProviderHandler = Handler(
  handlerFunc: (context, params) {
    return CounterProviderView(
      base: params['q']?[0] ?? '10',
    );
  },
);
final Handler pageNotFoundHandler = Handler(handlerFunc: (_, __) => View404());
