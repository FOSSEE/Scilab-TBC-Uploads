//example 10.1
clc;
clear;
//c= input('Enter the period of the waveform at C in micro seconds : ');
c=24;// given period of waveform 
clk= c/8;
clkf = 1/(clk*10^-3);
printf('The clock period is %f micro seconds \n',clk);//displaying the results 
printf('The clock frequenc must be %f  KHz ', clkf);

