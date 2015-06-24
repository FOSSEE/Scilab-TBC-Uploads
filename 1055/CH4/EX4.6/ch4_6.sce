//To find the rms value and phase values (i)The incident voltage to neutral at the recieving end (ii)The reflected voltage to neutral at the recieving end (iii)The incident and reflected voltage to neutral at 120 km from the recieving end.
clear
clc;
R=0.2;
L=1.3;
C=0.01*(10^-6);
z=R+%i*L*314*(10^-3);// serie impedence
y=%i*314*C;// shunt admittance
Zc=sqrt(z/y);// characterstic impedence
Y=sqrt(y*z);
Vr=132*1000/sqrt(3);
Ir=0;
Vin=(Vr + Ir*Zc)/2;// incident voltage to neutral at the recieving end
mprintf("Vr =%.3f volts \n",Vr);//Answer don't match due to difference in rounding off of digits
mprintf("(i)The incident voltage to neutral at the recieving end =%.3f volts \n",Vin);//Answer don't match due to difference in rounding off of digits
Vin2=(Vr - Ir*Zc)/2;// The reflected voltage to neutral at the recieving end
mprintf("(ii)The reflected voltage to neutral at the recieving end=%.3f volts \n",Vin2);//Answer don't match due to difference inrounding off of digits
Vrp=Vr*exp(.2714*120*(10^-3))*exp(%i*1.169*120*(10^-3))/1000;//Taking Vrp=Vr+
Vrm=Vr*exp(-0.0325)*exp(-%i*.140)/1000;//Taking Vrm=Vr-
v1=Vrm/2;// reflected voltage to neutral at 120 km from the recieving end
phase_v1=atand(imag(v1)/real(v1));//Phase angle of v1
v2=Vrp/2;//incident voltage to neutral at 120 km from the recieving end
phase_v2=atand(imag(v2)/real(v2));//Phase angle of v2
mprintf("(iii) reflected voltage to neutral at 120 km from the recieving end =%.2f at angle of %.2f \n",abs(v1),phase_v1);
mprintf("incident voltage to neutral at 120 km from the recieving end = %.2f at angle of %.2f\n",abs(v2),phase_v2);
