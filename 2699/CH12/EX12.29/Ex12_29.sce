//EX12_29 Pg-41.52
clc 
clear
cs=70;//carrier swing in kHz
//since cs=2*fd
fd=cs/2;//frequency deviation in kHz  
fm=7//modulating frequency in kHz
m=fd/fm;
printf("\n    Modulation index m=%.0f ",m)
