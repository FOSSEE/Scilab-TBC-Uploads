// Example 5.7, page no-191 
clear
clc

//comparing given equation with stanard equation
mf=150            //modulation index
fm=1              // modulating frequency in KHz
fd=mf*fm
bw=2*(mf+1)*fm
printf("frequency deviation = %.0f kHz\n Bandwidth = %.0f kHz \n\n Expression for instantaneous frequency is given by, \n f = 10^8-150*(10^3)*sin(2*3.14*10^3*t)",fd,bw)
