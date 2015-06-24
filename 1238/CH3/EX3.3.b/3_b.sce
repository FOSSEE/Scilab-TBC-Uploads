//finding clamping level voltage//
//example 3.b//
clc
//clears the command window//
clear
//clears// 
//charge=voltage/time//
disp('from equation ((V*4*10^-6)/20)=((5-V)*4000*10^-6)/(20*10^-3)),we get')
//resistance=20kohm;V=clamping level voltage;charge=voltage*capacitance//
V=20/8
printf('clamping level voltage=%f volt',V)
//the answer is displayed//
