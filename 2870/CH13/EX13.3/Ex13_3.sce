clc;clear;
//Example 13.3

//given data
mN=4;
T1N=20;
P1N=150;
mO=7;
T1O=40;
P1O=100;
//molecular masses
MO=32;
MN=28;

//constants used
Ru=8.314;//in kJ/kg - K


//from Table A-2a
CvN=0.743;
CvO=0.658;

//calculations

//part - a
//Ein - Eout = dEsystem
// (m*cv*dT)N2 + (m*cv*dT)= 0;
Tm= (mN*CvN*T1N+ mO*CvO*T1O)/(mN*CvN+mO*CvO);
disp(Tm,'the mixture temperature in C');

//part - b
NO=mO/MO;
NN=mN/MN;
Nm=NO+NN;
VO=NO*Ru*(T1O+273)/P1O;
VN=NN*Ru*(T1N+273)/P1N;
Vm=VO+VN;
Pm=Nm*Ru*(Tm+273)/Vm;  
disp(Pm,'the mixture pressure after equilibrium has been established in kPa')
