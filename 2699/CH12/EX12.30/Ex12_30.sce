//EX12_30 Pg-41.52
clc 
clear
fh=99.047e3;//highest frequency reached in kHz
fl=99.023e3;//lowest frequency reached in kHz
fm=7//modulating frequency in kHz
cs=fh-fl;//carrier swing
printf("Carrier swing=%.0f kHz\n",cs)
fd=cs/2;//frequency deviation in kHz  
printf("\n Therefore frequency deviation fd=%.0f Khz \n",fd)
fc=fh-fd;//;carrier frequency in kHz
printf("\n Therefore carrier frequency fc=%.3f Mhz \n",fc*1e-3)
m=fd/fm;
printf("\n Modulation index m=%.3f ",m)

