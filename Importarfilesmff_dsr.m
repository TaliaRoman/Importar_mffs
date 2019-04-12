

DirectorioGuardar = 'E:\Importacion\OutputFiles\' % Definir el directorio donde se guardaran los archivos .set

%Este Script disminuye la tasa de muestreo de los archivos a 500Hz


TablaArchivos

[Fin b] = size(TablaArchivos)

for n = 1:Fin
datetime
importarNS_dsr((TablaArchivos{n,3}),(TablaArchivos{n,4}),(TablaArchivos{n,5}),DirectorioGuardar)
end

datetime

% La función importarNS_dsr() fue creada con funciones originales de EEGlab, necesita 4 inputs:
%1.Archivo con directorio: path_files: ['G:\Mt1025 20160315 1524.mff'], %2.Set_name: 'Mt1025' (para verlo en la interfaz de EEGLab)
%3.Nombre con el que se guardará el archivo: savetoset 'Mt1025.set'
%4.El directorio donde se guardarán

%El input 1,2 y 3 están en las columnas de la TablaArchivos que generamos en el paso 7. Están en la columna 3, 4, y 5 por eso estan en {n,3},{n,4} y {n5}, declarados en esta función


%Talia Román%% talia.viann@gmail.com
%Actualizado 12-04-2019




