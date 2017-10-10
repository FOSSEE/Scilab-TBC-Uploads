//Example 17.1
close;
clc;
n=5;        //n bit resistive divider
//LSB weight
x=2^n-1;
LSB_weight=invr(x);
printf('\nWeight assigned to the LSB = 1/%d \n',x)
printf('\nWeight assigned to 2nd LSB = 2/%d \n',x)
printf('\nWeight assigned to 3rd LSB = 4/%d \n',x)
printf('\nChange in output voltage due to channge in the LSB = 10/%d \n',x)
printf('\nChange in output voltage due to channge in 2nd LSB = 20/%d \n',x)
printf('\nChange in output voltage due to channge in 3rd LSB = 40/%d \n',x)

function [Va]=Output_Voltage(D)
V=0;
for i=0:4
    a=modulo(D,10);
    D=floor(D/10);
    V=V+(a*10)*(2^i);
end
Va=V/x;
endfunction

//Digital input 11011
funcprot(0);
D=11011;        //0 represents 0 and 1 represents 10
[Va]=Output_Voltage(D);
printf('\nOutput Voltage for Digital input of 11011 = %.2f V\n',Va)

//Digital input 10110
funcprot(0);
D=10110;        //0 represents 0 and 1 represents 10
[Va]=Output_Voltage(D);
printf('\nOutput Voltage for Digital input of 11011 = %.2f V\n',Va)