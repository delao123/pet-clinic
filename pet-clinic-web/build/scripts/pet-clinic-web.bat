@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  pet-clinic-web startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and PET_CLINIC_WEB_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\pet-clinic-web.jar;%APP_HOME%\lib\spring-boot-starter-web-2.3.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-actuator-2.3.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-thymeleaf-2.3.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-test-2.3.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-json-2.3.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-2.3.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-2.3.4.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-5.2.9.RELEASE.jar;%APP_HOME%\lib\spring-web-5.2.9.RELEASE.jar;%APP_HOME%\lib\spring-boot-actuator-autoconfigure-2.3.4.RELEASE.jar;%APP_HOME%\lib\micrometer-core-1.5.5.jar;%APP_HOME%\lib\thymeleaf-spring5-3.0.11.RELEASE.jar;%APP_HOME%\lib\thymeleaf-extras-java8time-3.0.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-test-autoconfigure-2.3.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-test-2.3.4.RELEASE.jar;%APP_HOME%\lib\json-path-2.4.0.jar;%APP_HOME%\lib\jakarta.xml.bind-api-2.3.3.jar;%APP_HOME%\lib\assertj-core-3.16.1.jar;%APP_HOME%\lib\hamcrest-2.2.jar;%APP_HOME%\lib\junit-vintage-engine-5.6.2.jar;%APP_HOME%\lib\mockito-junit-jupiter-3.3.3.jar;%APP_HOME%\lib\junit-jupiter-params-5.6.2.jar;%APP_HOME%\lib\junit-jupiter-engine-5.6.2.jar;%APP_HOME%\lib\junit-jupiter-api-5.6.2.jar;%APP_HOME%\lib\junit-platform-engine-1.6.2.jar;%APP_HOME%\lib\junit-platform-commons-1.6.2.jar;%APP_HOME%\lib\junit-jupiter-5.6.2.jar;%APP_HOME%\lib\mockito-core-3.3.3.jar;%APP_HOME%\lib\jsonassert-1.5.0.jar;%APP_HOME%\lib\spring-test-5.2.9.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-2.3.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-actuator-2.3.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-2.3.4.RELEASE.jar;%APP_HOME%\lib\spring-context-5.2.9.RELEASE.jar;%APP_HOME%\lib\spring-aop-5.2.9.RELEASE.jar;%APP_HOME%\lib\spring-beans-5.2.9.RELEASE.jar;%APP_HOME%\lib\spring-expression-5.2.9.RELEASE.jar;%APP_HOME%\lib\spring-core-5.2.9.RELEASE.jar;%APP_HOME%\lib\xmlunit-core-2.7.0.jar;%APP_HOME%\lib\spring-boot-starter-logging-2.3.4.RELEASE.jar;%APP_HOME%\lib\jakarta.annotation-api-1.3.5.jar;%APP_HOME%\lib\snakeyaml-1.26.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.11.2.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.11.2.jar;%APP_HOME%\lib\jackson-module-parameter-names-2.11.2.jar;%APP_HOME%\lib\jackson-databind-2.11.2.jar;%APP_HOME%\lib\tomcat-embed-websocket-9.0.38.jar;%APP_HOME%\lib\tomcat-embed-core-9.0.38.jar;%APP_HOME%\lib\jakarta.el-3.0.3.jar;%APP_HOME%\lib\HdrHistogram-2.1.12.jar;%APP_HOME%\lib\LatencyUtils-2.0.3.jar;%APP_HOME%\lib\thymeleaf-3.0.11.RELEASE.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\log4j-to-slf4j-2.13.3.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.30.jar;%APP_HOME%\lib\slf4j-api-1.7.30.jar;%APP_HOME%\lib\json-smart-2.3.jar;%APP_HOME%\lib\jakarta.activation-api-1.2.2.jar;%APP_HOME%\lib\apiguardian-api-1.1.0.jar;%APP_HOME%\lib\junit-4.13.jar;%APP_HOME%\lib\byte-buddy-1.10.5.jar;%APP_HOME%\lib\byte-buddy-agent-1.10.5.jar;%APP_HOME%\lib\objenesis-2.6.jar;%APP_HOME%\lib\android-json-0.0.20131108.vaadin1.jar;%APP_HOME%\lib\spring-jcl-5.2.9.RELEASE.jar;%APP_HOME%\lib\jackson-annotations-2.11.2.jar;%APP_HOME%\lib\jackson-core-2.11.2.jar;%APP_HOME%\lib\ognl-3.1.12.jar;%APP_HOME%\lib\attoparser-2.0.5.RELEASE.jar;%APP_HOME%\lib\unbescape-1.1.6.RELEASE.jar;%APP_HOME%\lib\accessors-smart-1.2.jar;%APP_HOME%\lib\opentest4j-1.2.0.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\log4j-api-2.13.3.jar;%APP_HOME%\lib\javassist-3.20.0-GA.jar;%APP_HOME%\lib\asm-5.0.4.jar


@rem Execute pet-clinic-web
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %PET_CLINIC_WEB_OPTS%  -classpath "%CLASSPATH%" mx.com.roatech.petclinic.PetClinicApplication %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable PET_CLINIC_WEB_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%PET_CLINIC_WEB_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
