// Example 5.9, page no-192 
clear
clc

bw=20*10^3    //bandwidth in Hz
fm=1* 10^3    //modulating frequency in Hz
mf=(bw/(2*fm))-1
new_mf=mf*6
new_fm=0.5  //kHz
new_bw=2*(new_mf+1)*new_fm
printf("mf=%.0f\n New modulation index = %.0f\n New bandwidth = %.0f kHz",mf,new_mf,new_bw)
