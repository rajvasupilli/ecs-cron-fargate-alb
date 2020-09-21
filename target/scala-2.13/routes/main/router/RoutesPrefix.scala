// @GENERATOR:play-routes-compiler
// @SOURCE:/home/ec2-user/ecs-cron-fargate-alb/conf/routes
// @DATE:Mon Sep 21 17:44:20 UTC 2020


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
