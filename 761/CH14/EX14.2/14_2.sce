clc;
//page no 462
//prob no. 14.2
//a)Determination of impedance of open wire with diameter 3mm & r=10mm
D=3/2;r=10;//All values are in mm
Zo1=276*log10(r/D); 
disp('ohm',Zo1,'a)The characteristic impedance of conductor is');
//b)Determination of impedance of coaxial with er=2.3,inner diameter=2mm & outer diameter=8mm
er=2.3;D=8;d=2;//All diameter values in mm
Zo2=(138/sqrt(er))*log10(D/d);
disp('ohm',Zo2,'b)The characteristic impedance of coaxial cable is');