//EX12_22 Pg-41
clc 
clear
R=5;//frequency deviation constant in KHz/V
fm=10;//modulation frequency in kHz 
V=15;//amplitude of the modulating signal
fd=R*V;//frequency deviation
printf("\n maximum frequency deviation  fd=%.0f KHz/V \n",fd)
mf=fd/fm;
printf(" \n modulation index mf=%.1f",mf) 

