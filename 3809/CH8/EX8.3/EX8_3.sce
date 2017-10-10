//Chapter 8, Example 8.3
clc
funcprot()
//Initialisation
p1=5                           //power gain
p2=50                           //power gain
p3=500                           //power gain
v1=5                           //voltage gain
v2=50                           //voltage gain
v3=500                           //voltage gain


//initialising a function for gain in dB
function [x]=pgain(a)
  x=10*log10(a)
endfunction

function [x]=vgain(a)
  x=20*log10(a)
endfunction

//calling a functions
[pd1]=pgain(p1)
[pd2]=pgain(p2)
[pd3]=pgain(p3)
[vd1]=vgain(v1)
[vd2]=vgain(v2)
[vd3]=vgain(v3)

//Result
printf("Power Gain (dB) of 5 = %.1f dB\n",pd1)
printf("Power Gain (dB) of 50 = %.1f dB\n",pd2)
printf("Power Gain (dB) of 500 = %.1f dB\n",pd3)
printf("Voltage Gain (dB) of 5 = %.1f dB\n",vd1)
printf("Voltage Gain (dB) of 50 = %.1f dB\n",vd2)
printf("Voltage Gain (dB) of 500 = %.1f dB\n",vd3)
