@echo off
echo ===================================
echo Sincronizando save da nuvem (GitHub)...
echo ===================================
git pull origin main

echo.
echo ===================================
echo Iniciando Servidor de Palworld...
echo ===================================
:: A flag -port forca a porta independentemente das configs locais
PalServer.exe port=8211

echo.
echo ===================================
echo Servidor fechado. Salvando o progresso na nuvem...
echo ===================================
git add .
git commit -m "Auto-save do servidor: %date% %time%"
git push origin main

echo Sincronizacao concluida.
pause