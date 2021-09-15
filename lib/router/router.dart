import 'package:fluro/fluro.dart';

import 'package:flutter_application_1/router/route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    // Stateful Routers

    router.define(
      '/',
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/stateful',
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/stateful/:base',
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
    );

    // Provider Routers

    router.define(
      '/provider',
      handler: counterProviderHandler,
      transitionType: TransitionType.fadeIn,
    );

    // 404 - Not Page Found

    router.notFoundHandler = pageNotFoundHandler;
  }
}
