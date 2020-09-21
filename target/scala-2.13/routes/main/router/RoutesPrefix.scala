// @GENERATOR:play-routes-compiler
// @SOURCE:C:/Users/pavan/Desktop/Skechers/GitHub Actions/gha-fargate-poc/conf/routes
// @DATE:Sun Jul 26 21:33:33 PDT 2020


package router {
  object RoutesPrefix {
    private var _prefix: String = "/"
    def setPrefix(p: String): Unit = {
      _prefix = p
    }
    def prefix: String = _prefix
    val byNamePrefix: Function0[String] = { () => prefix }
  }
}
