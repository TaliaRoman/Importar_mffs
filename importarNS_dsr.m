function EEG = importarNS_dsr(filenameandpath,name_set,namesavedotset,pathtosave)

EEG = pop_readegimff(filenameandpath)
EEG.setname = name_set
EEG = letterkilla(EEG)
EEG = pop_resample(EEG,500)
EEG = pop_saveset(EEG, 'filename',namesavedotset,'filepath',pathtosave)
EEG = eeg_checkset(EEG)

end




%Esta función permite importar los archivos mff a .set, además remueve las
%letras de los archivos que vienen por default de los archivos mff
%(provenientes de NetStation). Además, disminuye la tasa de muestreo a
%500H

%OUTPUT = Archivos en '.set' para trabajarlos en EEGLab

%ARGUMENTOS DE ENTRADA/ INPUTS (todos deben meterse entre ''): 

%filenamepath: Es el nombre del archivo con su directorio ES IMPORTANTE QUE TENGA EL DIRECTORIO ESPECIFICADO.
%Ejemplo: 'C:\Mp1025 0509218.mff'

%nameset: Es el nombre que se le asignara al set. Este nombre se visualiza
%en la interfaz gráfica de EEGLab. Ejemplo: 'Mp1025'

%namesavedotset: Es el nombre del set pero con la terminación '.set' porque
%es como se guardará el archivo en el disco duro. Ejemplo: 'Mp1025.set'

%pathtosave : Es el nombre del directorio donde se guardarán los archivos.
%Ejemplo: 'C:\Sets\'


%%%%
%TaliaRoman talia.viann@gmail.com
%Actualizado 12-04-2019
