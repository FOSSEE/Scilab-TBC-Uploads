//To Determine phasors and phasor diagrams when loaded with a balanced resistor
//Page 154
clc;
clear;

R=2.77; //Resistance of the balanced load
//From Phasor Diagram in Result file
Vab=480*exp(%i*0); //Reference Voltage
MVn=abs(Vab)/sqrt(3); //Magnitude of line to neutral voltages
//Angles of Three phase voltages 
ta=-30;
tb=-150;
tc=90;

//Angles of Winding according to the Line Currents
tx3x2=30; //Leading
tx1x2=-30; //Lagging

I=MVn/R; //Magnitude of current

//Low Voltage Current Phasors
Ia=I*exp(%i*%pi*ta/180);
Ib=I*exp(%i*%pi*tb/180);
Ic=I*exp(%i*%pi*tc/180);
pfT=cosd(ta-ta); //Angle of Ia is same as phase voltage //Resistance load

printf('\na) The Low voltage current phasors are:\n')
printf('A is %g/_%g A\n',abs(Ia),ta)
printf('B is %g/_%g A\n',abs(Ib),tb)
printf('C is %g/_%g A\n',abs(Ic),tc)
printf('b) The Phasor Diagram is the ''b'' diagram of in the result file\n')
printf('c) The Power Factor of the Transformer is %g\n',pfT)
printf('d) Power Factor as seen by winding x3x2 of transformer 2 is %g leading\n',cosd(tx3x2))
printf('e) Power Factor as seen by winding x1x2 of transformer 2 is %g lagging\n',cosd(tx1x2))
