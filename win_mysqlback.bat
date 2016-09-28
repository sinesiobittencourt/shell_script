@echo off
@echo ---------------------------------------------------------------------
@echo HOSTGATOR BRASIL BACKUP MYSQL WINDOWS
@echo ---------------------------------------------------------------------
@echo.

IF NOT EXIST C:\inetpub\vhosts\default\htdocs\mysql (
mkdir C:\inetpub\vhosts\default\htdocs\mysql
) ELSE (
@echo.
)

@echo Este script vai gerar os bancos de dados de todo o servidor. Este processo pode demorar de acordo com o tamanho e quantidade de bancos de dados.
@echo.
@echo Deseja continuar ?
@echo.
choice /C SNC /M "Pressione: [S]im, [N]ao ou [C]ancelar"

IF errorlevel=3 goto CANCELAR
IF errorlevel=2 goto NAO
IF errorlevel=1 goto SIM

:CANCELAR
exit

:SIM

@echo Bancos de dados sendo gerados...
set dbuser=admin
set dbpass=Q7qUQBgWEr93rNSK

pushd "%plesk_dir%\Databases\MySQL\data"

FOR /D %%F IN (*) DO ("%plesk_dir%\MySQL\bin\mysqldump.exe" --user=%dbuser% --password=%dbpass% --databases %%F > "C:\inetpub\vhosts\default\htdocs\mysql\%%F.sql")
@echo.
@echo Banco de dados foi gerado e esta disponivel em C:\inetpub\vhosts\default\htdocs\mysql\. Voce pode baixar estes arquivos pelo IP principal do servidor.
@echo.
@pause

:NAO
@echo Finalizando script...
goto :CANCELAR
