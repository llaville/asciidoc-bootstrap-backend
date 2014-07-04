@ECHO OFF

REM ---
REM --- Windows CMD script
REM --- to build AsciiDoc-Bootstrap backend documentation in HTML 5 / Bootstrap 3 format
REM ---
REM --- Released under the Apache 2 license (http://www.apache.org/licenses/LICENSE-2.0.html)
REM --- (c) 2014 Laurent Laville
REM ---


IF "%ASCIIDOC%"==""       SET "ASCIIDOC=C:\asciidoc-8.6.9"
IF "%ASCIIDOC_BIN%"==""   SET "ASCIIDOC_BIN=%ASCIIDOC%\asciidoc.py"
IF "%ASCIIDOC_THEME%"=="" SET "ASCIIDOC_THEME=readable"

REM --
REM -- WEB HTML5 BOOTSTRAP FORMAT
REM --
ECHO GENERATING WEB HTML5 BOOTSTRAP FORMAT ...

FOR %%f IN (*.asciidoc) DO (
"%ASCIIDOC_BIN%" -b bootstrap -a linkcss -a navbar=fixed -a totop -a theme=%ASCIIDOC_THEME% %%f
)
