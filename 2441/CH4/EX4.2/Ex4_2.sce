//Exa 4.2
clc;clear;close;
format('v',6);
Lt=3000;//kW//Total Load
pf=0.8;//Power factor Lagging
I=150;//A
ZA=0.4+%i*12;//ohm//synchronous impedence
ZB=0.5+%i*10;//ohm//synchronous impedence
Vt=6.6;//kV//Terminal Voltage
L=Lt/2;//kW//Load supplied by each machine
LA=L;//kW
LB=L;//kW
//LB=sqrt(3)*Vt*IB*cosd(theta_B);
theta_B=acosd(LB/sqrt(3)/Vt/I);//degree
IB=I*(cosd(theta_B)-%i*sind(theta_B));//A
I_total=Lt/sqrt(3)/Vt/pf;//A//Total Current
IA_plus_IB=I_total*(0.8-%i*0.6);//A
IA=IA_plus_IB-IB;//A
cos_thetaA=real(IA)/abs(IA);//lagging power factor
EA=Vt/sqrt(3)+IA*ZA/1000;//kV per phase
del_A=atand(imag(EA)/real(EA));//degree//Load Angle
emf_A=abs(EA);//kV per phase//Induced emf of machine A
EB=Vt/sqrt(3)+IB*ZB/1000;//kV per phase
del_B=atand(imag(EB)/real(EB));//degree//Load Angle
emf_B=abs(EB);//kV per phase//Induced emf of machine A
IA=abs(IA);//A
disp(IA,"Current on machine A(A) : ");
pfA=cos_thetaA;//power factor
disp(pfA,"Lagging power factor of machine A");
format('v',5);
disp(emf_A,"Induced emf of machine A(kV per phase)");
disp(del_A,"Load angle of machine A(degree)");
disp(del_B,"Load angle of machine B(degree)");
disp(emf_B,"Induced emf of machine B(kV per phase)");
//Answer in the textbook is not accurate.
