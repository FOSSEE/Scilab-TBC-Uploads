//Resistance R, Source Voltage before opening the switch V,Inductance L
R1 = 6;//ohm
R2 = 3;
R3 =  10;
L = 0.1;//H
V = 36;//V
//For t<0
Req = R1*R2/(R1+R2)+R3;
I = V/Req;
//Current through inductor 'Io'
Io = R1/(R1+R2)*I;
//For t>0
R = R1+R2;
Vo = R*Io/L;
//Time constant 'tc'
tc = R/L;
//Maximum voltage across R1 'Vo1'
Vo1 = R1/(R1+R2)*Vo;
mprintf('Voltage across 6ohm resistance = %0.0fe^(-%0.0ft)',Vo1,tc);