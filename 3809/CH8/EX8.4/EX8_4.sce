//Chapter 8, Example 8.4
funcprot()
clc
//Initialisation
p1=20                           //gain
p2=30                           //gain
p3=40                           //gain



//initialising a function for gain 
function [x]=pgain(a)            //function for power gain
  x=10**(a/10)
endfunction

function [x]=vgain(a)            //function for voltage gain
  x=10**(a/20)
endfunction

//calling a functions
[pd1]=pgain(p1)
[pd2]=pgain(p2)
[pd3]=pgain(p3)
[vd1]=vgain(p1)
[vd2]=vgain(p2)
[vd3]=vgain(p3)

//Result
printf("Power Gain (dB) of 20 = %.1f dB\n",pd1)
printf("Voltage Gain (dB) of 30 = %.1f dB\n\n",vd1)
printf("Power Gain (dB) of 40 = %.1f dB\n",pd2)
printf("Voltage Gain (dB) of 20 = %.1f dB\n\n",vd2)
printf("Power Gain (dB) of 30 = %.1f dB\n",pd3)
printf("Voltage Gain (dB) of 40 = %.1f dB\n",vd3)
