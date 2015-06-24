clc;
//page no 539
//prob no. 15.2.2
// In the given problemhalf dipole antenna is given
Pr=10;//radiated power in watt
f=150;//freq used in MHz
d2=50;//distance of dipole in km
//we know for the half dipole the maximum gain is 1.64:1,and the effectie length is wl/pi. Therefore open-ckt voltage induced is given as
Vs=sqrt(30*Pr*1.64)/(d2*10^3)*2/%pi;
disp('uV',Vs*10^6,'The open-ckt voltage induced is ');