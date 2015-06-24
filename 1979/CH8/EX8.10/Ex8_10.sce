//chapter-8 page 344 example 8.10
//==============================================================================
clc;
clear;

//For a 2 cavity klystron amplifier
V0=900;//Beam voltage in V
I0=0.03;//Beam current in A
f=8*10^9;//frequency in Hz
d=0.001;//gap spacing in either cavity in m
L=0.04;//spacing between centers of cavities in m
Rsh=40000;//Effective shunt impedance in ohms
y=0.582;//value of J1(X)
X=1.841;

//CALCULATION
v0=(0.593*sqrt(V0)*10^6)/10^7;//The electron velocity in 10^7 m/sec
v=v0*10^7;
t0=(d/v)/10^(-10);//Transit time in 10^(-10) sec
t=t0*10^(-10);
a=2*(%pi)*f*t;//Gap transit angle in rad
Bi=(sin(a/2))/(a/2);//Beam coupling coefficient
Bo=Bi;
to=(2*(%pi)*f*L)/v;//dc transit angle in rad
disp('For maximum outout voltage,V2  J1(X)=0.582,X=1.841');
V1=((2*V0*X)/(Bo*to))//The input voltage for maximum output voltage in V
Ro=(V0/I0);
Av=((Bo^2*to*y*Rsh)/(Ro*X));//Voltage gain
AvdB=10*log10(Av);//Voltage gain in dB

//OUTPUT
mprintf('\nThe electron velocity is v0=%1.1f *10^7 m/sec \nThe dc electron Transit time is t0=%1.2f *10^(-10) sec \nThe input voltage for maximum output voltage is V1=%2.2f V \nVoltage gain is Av=%2.2f \nVoltage gain in dB is AvdB=%2.2f dB',v0,t0,V1,Av,AvdB);

//=========================END OF PROGRAM===============================
