//chapter-3 page 52 example 3.10
//==============================================================================
clc;
clear;

f=1000;//Frequency in Hz
l=10000;//Length of open wire transmission line in met
z1=2930;//Magnitude of a short circuit impedance in ohms
p1=26;//Phase of a short circuit impedance in deg
z2=260;//Magnitude of a open circuit impedance in ohms
p2=-32;//Phase of a open circuit impedance in deg
//CALCULATIONS
Zsc=((z1*cosd(p1))+((%i)*(z1*sind(p1))));
Zoc=((z2*cosd(p2))+((%i)*(z2*sind(p2))));
Z0=sqrt(Zsc*Zoc);//Characteristic Impedance in ohms
disp('Characteristic Impedance in ohms is');
[ro,theta]=polar(Z0)
disp(ro);
disp(theta*180/%pi);
g=((1/l)*(atanh(sqrt(Zsc/Zoc))));//Propagation Constant
disp(g)
b=imag(g);//Phase Constant
w=2*f*(%pi);//Angular Frequency in rad/sec
Vp=w/b;//Phase Velocity in m/sec
disp(Vp)
//OUTPUT
mprintf('\nPhase Velocity is Vp=%5.2f m/sec',Vp);

//=========================END OF PROGRAM==============================================================


//Note: Check the calculation once 
