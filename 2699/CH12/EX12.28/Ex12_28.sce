//EX12_28 Pg-41.51
clc 
clear
fc=50.4e3;//;carrier frequency in kHz
fh=50.405e3//highest frequency reached in kHz
fd=fh-fc;//frequency deviation in kHz 
printf("\n Therefore frequency deviation produced fd=%.0f Khz \n",fd)
cs=2*fd;//carrier swing
printf("\n carrier swing=%.0f kHz\n",cs)
fl=fc-fd;//lowest frequency reached
printf("\n Therefore lowest frequency reached fl=%.3f MHz",fl*1e-3)

