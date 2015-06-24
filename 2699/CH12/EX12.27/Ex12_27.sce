//EX12_27 Pg-41.51
clc 
clear
fd=40;//frequency deviation in kHz 
cs=2*fd;//carrier swing
printf("\n carrier swing=%.0f kHz\n",cs)
fc=93.2e3;//;carrier frequency in kHz
fh=fc+fd;//highest frequency reached
fl=fc-fd;//lowest frequency reached
printf("\n Therefore highest frequency reached fh=%.2f MHz\n ",fh*1e-3)
printf("Lowest frequency reached fl=%.2f MHz",fl*1e-3)
fm=5;//modulating frequency in kHz
m=fd/fm;//frequency modulation
printf("\n\n modulation index m=%.0f ",m)
