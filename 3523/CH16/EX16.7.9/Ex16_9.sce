clear all
clc
close

n=8;//no ofstage
C1=0.16*1e-6;//Each stage capacitor in F
C2=1e-9;//Load capacitance in F
T2=50*1e-6;
T1=1.2*1e-6;
Vch=120;//Charging voltage in kV

//Total capacitance in F
CT=C1/n;

alpha=6.4;
theta=T2/9.5;

X=(1+C2/C1)/alpha^2;
R1=alpha*theta/C2*(1-sqrt(1-X));//in ohm

R2=alpha*theta/(CT+C2)*(1+sqrt(1-X));//in ohm
//Perstage shaping resistance in ohm
printf('Perstage shaping resistance in %f ohm',R1/n)

Vdc=n*Vch;
eta=1/(1+(1+R1/R2)*C2/CT)

//Maximum output voltage
Vmax=eta*Vdc;
printf('Maxium output voltage in %f kV',Vmax)

//Energy rating in J
E=0.5*CT*(Vdc*1e3)^2;
printf('Energy rating in %f J',E)
