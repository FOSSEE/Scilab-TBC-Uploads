clc
//Example 17.8
Vs = poly(0,'Vs')
disp('Given')
disp('Z=[10^3 10;-10^6 10^4 ]')
z11=10^3 ; z12=10;z21=-10^6;z22=10^4 
//Using the given matrix we can write the mesh equations as
disp('V1=10^3*I1+10*I2')
disp('V2=-10^6*I1+10^4*I2')
//The input to an two port network is an ideal sinusoidal voltage source in series with 500 ohm
//Mathematically
disp('The characterizing equations are')
disp('Vs=500*I1+V1')
//The output to an two port network is a 10k ohm resistor
//Mathematically
disp('V2=-10^4*I2')
Zg=500;
//Expressing V1,V2,I1,I2 in terms of Vs
V1=0.75*Vs
I1=Vs/2000
V2=-250*Vs
I2=Vs/40
disp('Voltage gain Gv=V2/V1')
Gv=V2/V1
disp(Gv,'Gv=')
disp('Current gain Gi=I2/I1')
Gi=I2/I1
disp(Gi,'Gi=')
disp('Power gain Gp=Real[-0.5*V2*I2*]/Real[0..5*V1*I1*]')
Gp=(-0.5*V2*I2)/(0.5*V1*I1)
disp(Gp,'Gp=')
disp('Input impedance is Zin=V1/I1')
Zin=V1/I1
disp('Output impedance is Zout=z22-((z12*z21)/(z11+Zg))')
Zout=z22-((z12*z21)/(z11+Zg))
printf("\n Zout= %3.2f kohm",Zout*10^-3)