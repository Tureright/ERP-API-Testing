function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue'
  }

  config.baseUrl = java.lang.System.getProperty('BASE_URL') || java.lang.System.getenv('BASE_URL');

  return config;
}