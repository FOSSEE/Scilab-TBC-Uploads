//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex11_1.sce

clc;
clear;
V_not=220;
I_not=4;
W_not=100;
Vsc=110;
Isc=10;
Wsc=400;
p=6;
V=220;
f=50;

printf("\n (a)")
r1=(Wsc/Isc^2)/2;
x1=sqrt((Vsc/Isc)^2-(2*r1)^2)/2;
r2_dash=r1;
x2_dash=x1;
phi_not=acosd(W_not/(V_not*I_not));
V_not_dash=V_not-((I_not*(cosd(phi_not)-%i*sind(phi_not)))*((r1+r2_dash/4)+%i*(x1+x2_dash/2)));
Wi=W_not-(I_not^2*(r1+r2_dash/4));
R_not_by_2=(V_not_dash^2)/Wi;
Y_not=(I_not)/(V_not_dash*2);
B_not=sqrt((2*Y_not)^2-(1/R_not_by_2)^2)/2;
X_not_by_2=1/(2*B_not);
printf("\n  Parameters of the motor:")
printf("\n \t r1=r2dash=%d ohm",r1)
printf("\n \t x1=x2dash=%1.3f ohm",x1)
printf("\n \t R0/2=%3.2f ohm",sqrt(real(R_not_by_2)^2+imag(R_not_by_2)^2))
printf("\n \t X0/2=%2.2f ohm",sqrt(real(X_not_by_2)^2+imag(X_not_by_2)^2))

printf("\n (b)")
//From the applied parameters of equivalent circuit of the motor  stator current  is simplified
I1=complex(1.096,-0.526)*complex(6.36,-1.92);
I1_mag=sqrt(real(I1)^2+imag(I1)^2);
I1_angle=atand(imag(I1)/real(I1));
pf=cosd(I1_angle);
P_input=1075;
P_loss=102.87;
P_not=P_input-P_loss;
Ns=1000;
s=0.04;
Nfl=(1-s)*Ns;
T_net=P_not/(2*%pi*Nfl/60);
motor_input=V*I1_mag*pf;
efficiency=(P_not/motor_input)*100;
printf("\n  Stator current: \n\t magnitude=%1.2f V,\n\t angle=%2.2f degree",I1_mag,I1_angle)
printf("\n  Power factor=%0.3f lagging",pf)
printf("\n  Power output=%3.2f watt",P_not)
printf("\n  Speed=%d r.p.m",Nfl)
printf("\n  Torque=%1.2f Nm",T_net)
printf("\n  Efficiency=%d percentage",efficiency)
//Answer vary dueto roundoff error
