//EX12_21 Pg-41
clc 
clear
mf=60;//modulation index
fm=0.4;//modulation frequency in kHz ie 0.4kHz=400Hz
//fd_max=maximum frequency deviation
fd_max=mf*fm;//since mf=fd_max_/fm 
printf("maximum deviation fd_max=%.0f kHz \n",fd_max)
V=2.4;//modulating voltage
R=fd_max/V;//frequency deviation constant in KHz/V
disp("when modulating voltage V=3.2 V")
V=3.2;
fd=R*V;//frequency deviation
fm=0.25//modulation frequency in kHz ie 0.25kHz=250Hz
mf=fd/fm;
printf(" \n modulation index mf=%.0f",mf) 
//in the book the final answer for modulation mf=80 
//is wrong the correct answer is mf=128
