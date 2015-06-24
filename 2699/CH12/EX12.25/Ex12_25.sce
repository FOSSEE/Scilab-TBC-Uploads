//EX12_25 Pg-41.48
clc 
clear
fd=15;//frequency deviation in kHz 
f=75;//maximum frequency deviation in kHz for FM broadcast
%M=fd/f*100;
printf("\n For FM broadcast percent modulation is %%M=%.0f%%\n",%M)
f=25;//maximum frequency deviation in kHz for TV broadcast
%M=fd/f*100;
printf("\n For TV broadcast percent modulation is %%M=%.0f%% \n",%M)
