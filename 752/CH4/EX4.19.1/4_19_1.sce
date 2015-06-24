clc;
// page no 146
// prob no 4_19_1
//An avalanche diode source is given with excess noise ratio is 14 dB
enr=14;
To=290;//Room temp in K
y=9;//Y-factor  is 9 dB
//converting dB in power ratio
ENR=10^(enr/10);
Y=10^(y/10);
//From def of ENR the hot temp is
Th=To*(ENR+1);
disp('K',Th,'The value of hot temp Th is '); 
//Determination of equivalent noise temp
Te=(Th-(Y*To))/(Y-1);
disp('K',Te,'The value of equivalent noise temp Te is '); 