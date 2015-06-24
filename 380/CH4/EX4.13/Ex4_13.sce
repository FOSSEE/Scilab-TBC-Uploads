//Caption:Find the line voltages,the line currents and efficiency of the transformer
//Exa:4.13
clc;
clear;
close;
R_H=133.5*10^-3;//in ohms
X_H=201*10^-3;//in ohms
R_L=39.5*10^-3;//in ohms
X_L=61.5*10^-3;//in ohms
R_cL=240;//in ohms
X_mL=290;//in ohms
pf=0.8;//lagging
theta=-acosd(pf);
V_2n=138.564*(cosd(0)+%i*sind(0));//rated load voltage for Y/Y connection
I_2A=86.6*(cosd(theta)+%i*sind(theta));//load current
a=120/138.564;//transformation ratio
I_pA=(I_2A/a)*(cosd(30)+%i*sind(30));//per phase current in primary winding
E_2n=V_2n+I_2A*(0.0445+%i*0.067);//voltage induced in secondary winding
E_2L=sqrt(3)*E_2n*(cosd(30)+%i*sind(30));
E_1n=a*E_2n*(cosd(30)+%i*sind(30));//voltage induced in primary winding
I_1A=I_pA+E_1n*((1/240)-%i*(1/290));
disp(abs(I_2A),'Line current in secondary side (in Amperes)=');
disp(atand(imag(I_2A)/real(I_2A)),'phase angle of induced line current in secondary (in Degree)=');
disp(abs(I_1A),'Line current in primary side (in Amperes)=');
disp(atand(imag(I_1A)/real(I_1A)),'phase angle of induced line current in primary (in Degree) =');
disp(abs(E_2L),'Line voltage induced  in secondary side (in Volts)=');
disp(atand(imag(E_2L)/real(E_2L)),'phase angle of induced line voltage in secondary (in Degree)=');
V_1n=E_1n+I_1A*(R_L+%i*X_L);
V_1L=sqrt(3)*V_1n*(cosd(30)+%i*sind(30));
disp(abs(V_1L),'Line voltage induced  in primary side (in Volts)=');
disp(atand(imag(V_1L)/real(V_1L)),'phase angle of induced line voltage  in primary (in Degree)=');
P_o=3*real(138.564*conj(I_2A));
P_in=3*real(V_1n*conj(I_1A));
Eff=P_o/P_in;
disp(Eff*100,'Efficiency (%)=');