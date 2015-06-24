//EX12_26 Pg-41.48
clc 
clear
%M=80;// percent modulation in %
f=75;//maximum frequency deviation in kHz for FM broadcast
fd=f*%M/100;//frequency deviation in kHz since %M=fd/f*100;
printf("\n Therefore frequency deviation for FM broadcast fd=%.0f Khz \n",fd)
cs=2*fd;//carrier swing
printf(" carrier swing=%.0f kHz\n",cs)
f=25;//maximum frequency deviation in kHz for TV broadcast
fd=f*%M/100;//frequency deviation in kHz since %M=fd/f*100;
printf("\n Therefore frequency deviation for TV broadcast fd=%.0f Khz \n",fd)
cs=2*fd;//carrier swing
printf(" carrier swing=%.0f kHz\n",cs)
