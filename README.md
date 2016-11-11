[![https://img.shields.io/badge/OpenAPI-valid-brightgreen.svg](https://img.shields.io/badge/OpenAPI-valid-brightgreen.svg)](http://online.swagger.io/validator?url=https://raw.githubusercontent.com/amardeshbd/medium-api-specification/master/medium-api-specification.yaml) [![Build Status](https://travis-ci.org/amardeshbd/medium-api-specification.svg)](https://travis-ci.org/amardeshbd/medium-api-specification)

Medium.com API Specification
================================
This is an unofficial API specification translated from official API documentation found at [https://github.com/Medium/medium-api-docs](https://github.com/Medium/medium-api-docs) using OpenAPI Specification _(fka [Swagger](http://swagger.io/) 2.0)_.

Why OpenAPI?
------------------
OpenAPI specification is an open standard, it provides variety of support for generating both server and client code for different languages and frameworks. See [Swagger Tools](http://swagger.io/tools/) for more information.

Preview/Test API
--------------------
Best way to preview or test API is using **Swagger UI**, **Swagger Editor** or **Postman**. 
> NOTE: You should generate **self-issued-access-tokens** by following instruction on [official-guide](https://github.com/Medium/medium-api-docs#22-self-issued-access-tokens) to access API endpoints.

 * `Swagger UI` **(Recommended)** - Good for preview API doc. You can [download](https://github.com/swagger-api/swagger-ui) Swagger UI distribution, or open their **[demo](http://petstore.swagger.io/)** site and load the specification URI ([https://raw.githubusercontent.com/amardeshbd/medium-api-specification/master/medium-api-specification.yaml](https://raw.githubusercontent.com/amardeshbd/medium-api-specification/master/medium-api-specification.yaml))
 * `ReDoc` **(Mobile Device Friendly)** - ReDoc is another API spec viewer built by [Rebilly](https://github.com/Rebilly/ReDoc). **[Preview Medium API](http://rebilly.github.io/ReDoc/?url=https://raw.githubusercontent.com/amardeshbd/medium-api-specification/master/medium-api-specification.yaml)** in Redoc. _(Supports responsive design for both desktop and mobile devices)_
 * `Swagger Editor` - Good for preview, live editor support and API client library code generation support. Open their **[swagger editor](http://editor.swagger.io/)** and load the URL specification above.
 * `Postman` - Good for preview and testing API endpoints. More info at [https://www.getpostman.com/](https://www.getpostman.com/)

### Generating Client SDK
The [swagger-codegen](https://github.com/swagger-api/swagger-codegen) tool can generate client-sdk for different languages. 

Based on [code generator](https://generator.swagger.io) service, following languages are [supported](https://generator.swagger.io/api/gen/clients) by the client generator.
> "akka-scala", "android", "async-scala", "clojure", "cpprest", "csharp", "CsharpDotNet2", "cwiki", "dart", "dynamic-html", "flash", "go", "groovy", "html", "html2", "java", "javascript", "javascript-closure-angular", "jmeter", "objc", "perl", "php", "python", "qt5cpp", "ruby", "scala", "swagger", "swagger-yaml", "swift", "tizen", "typescript-angular", "typescript-angular2", "typescript-fetch", "typescript-node"


Here are few examples: 
 * Android _(with java based retrofit client library)_: [medium-api-android-sample](https://github.com/amardeshbd/medium-api-android-sample)
 * Android _(with java based retrofit+RxJava client library)_ : [android-daily-headlines](https://github.com/amardeshbd/android-daily-headlines) - Uses [NYTimes](https://developer.nytimes.com/) _Top Stories V2_ swagger spec to generate [client library](https://github.com/amardeshbd/android-daily-headlines/tree/develop/api-lib/src/main/java/io/swagger/client).

### Screenshots
 * Swagger UI ![Swagger UI](https://github.com/amardeshbd/medium-api-specification/blob/master/resources/screenshot_openapi_swagger-ui.png)
 * Swagger Editor _(NOTE: Code generation option available here)_ ![Swagger Editor](https://github.com/amardeshbd/medium-api-specification/blob/master/resources/screenshot_openapi_swagger-editor.png)
 * Postman ![Postman](https://github.com/amardeshbd/medium-api-specification/blob/master/resources/screenshot_openapi_postman.png)
