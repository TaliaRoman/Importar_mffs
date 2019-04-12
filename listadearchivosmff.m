%%Generar una tabla con todos los archivos mff contenidos en un directorio%%

%Esta función tiene la finalidad de recuperar los nombres de todos los archivos mff
%de un directorio y formar una tabla, que contenga 'Pathway', el nombre del set y 
%el nombre con el que será guardado '.set' cuando se haga uso de la funcion
%'importarNS_dsr.m', lo que hace la tabla es declarar y organizar todos los
%inputs que necesita esa función ''importarNS_dsr.m'. 

%Con este script no es necesario hacer el ingreso manual de los archivos
%mff y sus respectivas localizaciones en los directorios en la función

function TablaArchivos = listadearchivosmff(Carpeta)

directorio = dir(Carpeta) % Despliega los elementos del directorio actual
directorio_names = {directorio.name}  %Guarda en un vector de tipo strings los nombres de los archivos en el directorio actual
directorio_path = {directorio.folder} %Guarda en un vector de tipo strings el directorio donde está

direcnames = directorio_names' %Como directorio_names se guarda en una fila, esta linea lo transpone para que sea una columna
direcpath  = directorio_path'  %Como directorio_path se guarda en una fila, esta linea lo transpone para que sea una columna

pathmasfiles = [direcpath, direcnames] %Forma una tabla que pega las dos columnas de strings, genera que se ponga el directorio en una columna
%y el nombre de archivo en la columna contigua. Ejemplo:
%pathmasfiles = ['G:','Mt1025 20160315 1524.mff']


path_files = join(pathmasfiles,"\") %Esta línea permite que se forme completa el nombre del archivo con el directorio
%y en medio un '\' para que se forme adecuadamente la dirección. 
%Por ejemplo: ['G:\Mt1025 20160315 1524.mff']

set_names  = strtok(direcnames) %Esta linea retoma los nombres de los archivos en el directorio
%Por ejemplo: 'Mt1025 20160315 1524.mff'y toma el nombre hasta antes del
%primer espacio, en este caso 'Mt1025' será el nombre del set y forma un
%vector que contiene todos los nombres breves de los archivos. 

path_files_pathfiles = [direcpath, direcnames,path_files,set_names] %Esta línea retoma todos los vectores anteriores
%y forma ahora una tabla con la dirección, los nombres de los archivos, la
%unión de la direccion con el archivo y el nombre del set

savetoset = strcat((set_names),'.set') %Se forma con esta linea una columna más que toma el nombre de los sets y les agrega
%.set a todos porque sera el argumento que sirva para guardarlos
%posteriormente. 

TablaArchivos = [direcpath, direcnames, path_files, set_names, savetoset] %Esta linea sirve para acomodar toda la informacion que tenemos. 
%una fila de nuestra tabla deberia verse como:
%[ 'G:',  'Mt1025 20160315 1524.mff', 'G:\Mt1025 20160315 1524.mff,
%'Mt1025', Mt1025.set] 

end

%Versión 10-04-2019
%TaliaRoman talia.viann@gmail.com



