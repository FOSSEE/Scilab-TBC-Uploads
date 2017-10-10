clc;
P=15000; // rated power of induction motor
V=400; // rated voltage of motor
f=50; // frequency
m=3; // number of phases
po=4; // number of poles
// no load test results
Vo=400; // applied line voltage
io=9; // no load line current
Po=1310; //  power input
// blocked rotor test
vb=200; // line voltage
ib=50; // line current
pb=7100; // input power
pfo=po/(sqrt(3)*io*Vo); // no load power factor
pfb=pb/(sqrt(3)*ib*vb); // short circuit power factor
isc=(V/vb)*ib; // short circuit current
printf('Short circuit current is %d A\n',isc);
// circle diagram is drawn in fig 6.37 with scale 6 A= 1 cm
disp('case a');
x=6; // scale
pps=(V/sqrt(3))*x; // per phase power scale
fp=P/3; // full load power per phase
// as per the construction we obtain OP=6.05 which corresponds to full load current
ifl=x*6.05; 
printf('Full load line current is %f A\n',ifl);
// from fig angle POV1=29.5;
fpf=cosd(29.5); 
printf('Full load power factor is %f lagging\n',fpf);
// full load slip is given by ratio ba/bP where ba=2.5, bP=38.5
fs=2.5/38.5;
printf('Full load slip is %f \n',fs);
ws=(2*%pi*f*120)/(po*60); // synchronous speed
Ft=(3.85*pps*m)/ws; 
printf('Full load torque is %f Nm\n',Ft);
// efficiency is given by ratio aP/dP where aP=3.6, dP=4.45
ne=3.6/4.45; 
printf('Full load efficiency is %f percent\n',ne*100);
disp('case b');
// OP turns out to be tangent to circular locus, therefore
disp('Maximum power factor is 0.87 lagging');
disp('Maximum line current is 36.3 A');
disp('case c');
// according to constructions given in solution we obtain AA'=5.3 from which maximum power output can be calculated
mpo=5.3*m*pps; 
printf('Maximum output power is %f KW\n',mpo/1000);
// according to constructions given in solution we obtain CC'=8.45=radius of circle from which maximum power input can be calculated
mpi=8.45*m*pps+po; 
printf('Maximum input power is %f KW\n',mpi/1000);
disp('case d');
// according to constructions given in solution we obtain BB'=6.65 from which maximum torque can be calculated
Mt=(6.65*m*pps)/ws; 
printf('Maximum torque is %f Nm\n',Mt);
// maximum slip is given by ratio fb'/BB' where fb'=1.58, BB'=6.65
s=1.58/6.65;
printf('Maximum slip is %f \n',s);
disp('case e');
// according to constructions given in solution we obtain DG=3.3 from which starting torque can be calculated
St=(3.3*m*pps)/ws; 
printf('Starting torque is %f Nm\n',St);
