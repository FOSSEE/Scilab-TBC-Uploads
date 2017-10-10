clc;
p=4; // number of poles
np=3; // number of phases
f=50; // frequency of alternator
sap=8; // slot angular pitch
c=12; // number of concentric coils in field winding
tf=6; // turns per field coil
ta=28; // series armature turn per phase
ar=0.6; // armature radius
la=4; // armature length
g=0.06; // gap length
w=0.96; // winding factor for armature winding
fc=1000; // field current
disp('case a'); 
kd=sind((np*sap)/2)/(np*sind(sap/2)); // distribution factor
kp=1; // coil span factor
kf=kd*kp; // winding factor for field winding
nf=tf*c; // number of field turn
F=(4*kf*nf*fc)/(%pi*p);
printf('Peak value of fundamental mmf produced by field winding is %f AT/pole\n',F);
disp('case b');
uo=4*%pi*10^-7; // free space permeability
B=(uo*F)/g;
printf('Peak value of fundamental flux density wave is %f T\n',B);
disp('case c'); 
v=(4*B*la*ar)/p; 
printf('Fundamental value of air gap flux per pole is %f W\n',v);
disp('case d');
eph=sqrt(2)*%pi*f*v*ta*w;
printf('EMF per phase is %f V\n',eph);
el=sqrt(3)*round(eph); 
printf('Line EMF is %f V',el);
 

