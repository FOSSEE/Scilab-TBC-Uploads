clc;
p=2; // number of poles
f=50; // frequency of machine
D=1.6; // diameter of cylindrical rotor
l=1.8; // length of cylindrical rotor
g=0.012; // air gap length
rm=4000; // peak value of rotor mmf
rs=6000; // peak value of stator mmf
ph=140; // phase difference between stator mmf and rotor mmf
uo=4*%pi*10^-7; // free space permeability0
disp('a'); 
rp=sqrt(rm^2+rs^2+2*rm*rs*cosd(ph)); 
printf('Resultant peak gap mmf is %f AT/pole\n',rp);
disp('b'); 
Bp=(uo*rp)/g; 
printf('Peak gap flux density is %f T\n',Bp);
disp('c'); 
ge=(uo*%pi*D*l*rp^2)/(4*g);
printf('Total gap energy is %f Joules\n',ge);
disp('d');
T=(p*uo*%pi*D*l*rs*rm*sind(ph))/(4*g);
printf('Electromagnetic torque is %f Nm\n',T);
disp('e');
wm=(4*%pi*f)/2; // synchronous speed
P=(T*wm)/1000
printf('Electromagnetic power is %f KW',P);
