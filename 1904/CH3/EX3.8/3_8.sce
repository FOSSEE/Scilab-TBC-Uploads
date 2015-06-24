//To Determine the the voltages of a two transformer bank
//Page 152
clc;
clear;


Vll=480; //Line to Line Voltage
Vln=277; //Line to neutral Voltage

//From the Phasor Diagram from the result file
Vab=Vll*exp(%i*0); //Vab is taken as reference
Vabh=50*Vab/100;
VAB=4160;
VABh=50*VAB/100; 
VH1H2o=sqrt((VAB^2)-(VABh^2));
VH1H2t=(VABh);
Vx1x2o=1*sqrt((Vab^2)-(Vabh^2))/3;
Vx2x3o=2*sqrt((Vab^2)-(Vabh^2))/3;
VH2H3t=(VABh);
Vx1x2t=Vabh;
Vx2x3t=Vabh;

printf('\na) The Phasor diagram is shown in the result file attached to the code\n')
printf('b) Vab is %g/_%g V\n',abs(Vab),(imag(Vab)/real(Vab)))
printf('c) The Magnitudes of the following rated winding voltages\n')
printf('i) The Voltage VH1H2 on transformer 1 : %g V\n',VH1H2o)
printf('ii) The Voltage Vx1x2 on transformer 1 : %g V\n',Vx1x2o)
printf('iii) The Voltage Vx2x3 on transformer 1 : %g V\n',Vx2x3o)
printf('iv) The Voltage VH1H2 on transformer 2 : %g V\n',VH1H2t)
printf('v) The Voltage VH2H3 on transformer 2 : %g V\n',VH2H3t)
printf('vi) The Voltage Vx1x2 on transformer 2 : %g V\n',Vx1x2t)
printf('vii) The Voltage Vx1x2 on transformer 2 : %g V\n',Vx2x3t)
printf('d) i) NO ii) NO iii) YES\n')
