enum RouterPath {
  indexPage
}

extension GetRouterPath on RouterPath {
  String get path {
    switch (this) {
      case RouterPath.indexPage:
        return "/";
    }
  }

  String get name {
    switch (this) {
      case RouterPath.indexPage:
        return "home";
    }
  }
}