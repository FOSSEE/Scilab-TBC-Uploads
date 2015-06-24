clc;
// page no 205
// prob no 6_4_1
// colpitt's oscillator
L=400*10^-6;// in H
c1= 100;// in pF
c2= 300;// in pF
Q=200;
Ro= 5*10^3;
Bo=100;//beta value
// The tuning capacitance is
Cs=(c1*c2/(c1+c2));
disp('pF',Cs,+'1.The value of capacitor is ');
//  the frequency of oscillation is obtained as
f=1/(2*%pi*sqrt(L*Cs*10^-12));
disp('Hz',f,'2.The frequency of oscillation is');
// The dynamic impedence of the tuned circuit 
wo= 2*%pi *f;
Rd=Q/(wo*Cs*10^-12);
disp('ohm',Rd,+'3.The dynamic impedence of the tuned circuit');
// The coil series resistance is 
r=wo*L/Q;
disp('ohm',r,+'4.The coil series resistance is ');
//The capacitor raio c= c1/c2=1/3, and therefore 1-c2/B0*c1 = 1 .
// The starting value of gm is therefore given by
c= c1/c2;
gm=(1/Ro)*c +(c+3+2)*(1/Rd);
disp('sec',gm,+'5.The value of gm is');
// Assuming the input resistance is that of the transistor alone,
R1=Bo/gm;
disp('ohm',R1,+'6.The input resistance is');
//The actual starting frequency is obtained from wo^2=(1/LCs)+(1/R1R2C1C2)
wo2=1/((L*Cs*10^-12)+(1/R1*Ro*c1*c2*10^-12*10^-12));
wo=sqrt(wo2);
// Hence the frequency is 
f=wo/(2*%pi);
disp('Hz',f,'7.The frequency of oscillation is');