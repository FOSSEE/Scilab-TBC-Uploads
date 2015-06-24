// Example 5.10, page no-192 
clear
clc

fd=75     //Maximum allowed frequency deviation in kHz
fm=15     //Highest modulating frequency in kHz

D=fd/fm
bw=2*(D+1)*fm
printf("Deviation Ratio, D = %.0f\n Bandwidth = %.0f kHz",D,bw)
