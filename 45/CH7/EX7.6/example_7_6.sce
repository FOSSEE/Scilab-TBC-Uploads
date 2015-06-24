//example 7.6 
clc
clear
//rb=input('Enter the value of the resistance RB in Kohms :');
//dc =input('Enter required duty cycle in % :');
//clk = input('Enter the provided clock frequency in MHz:');
rb=0.75//taking the given values for input 
dc=25
clk=1
ra = (rb*100/dc) - 2*rb;//mking neccesary calculations 
 format('v',18);
t2 = dc/(clk*10^8);
C = t2/(693*rb)
C=C*10^12;
//C=round(C);
printf('The value of RA is %f Kohms\n',ra);//displaying the output
printf('The value of C is %f pico farads',C);
