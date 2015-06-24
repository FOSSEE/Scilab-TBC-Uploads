//ex6.8
B_DC=150;
B_ac=175;
V_CC=10;
V_s=10*10^-3;
R_s=600;
R1=47*10^3;
R2=10*10^3;
R_E1=470;
R_E2=470;
R_C=4.7*10^3;
R_L=47*10^3;
R_IN_base=B_DC*(R_E1+R_E2);
//since R_IN_base is ten times more than R2,it can be neglected in DC voltage calculation
V_B=(R2/(R2+R1))*V_CC;
V_E=V_B-0.7;
I_E=V_E/(R_E1+R_E2);
I_C=I_E;
V_C=V_CC-I_C*R_C;
disp(V_C,'dc collector voltage in volts')
r_e=25*10^-3/I_E;
//base resistance
R_in_base=B_ac*(r_e+R_E1);
//total input resistance
R_in_tot=(R1*R2*R_in_base)/(R1*R2+R_in_base*R1+R_in_base*R2);
attenuation=R_in_tot/(R_s+R_in_tot);
//ac collector resistance
R_c=R_C*R_L/(R_C+R_L);
//voltage gain from base to collector
A_v=R_c/R_E1;
//overall voltage gain A_V
A_V=A_v*attenuation;
//rms voltage at collector V_c
V_c=A_V*V_s;
Max_V_c_p=V_C+sqrt(2)*V_c;
Min_V_c_p=V_C-sqrt(2)*V_c;
V_out_p=sqrt(2)*V_c;
//assume frequency to be 1Hz
f=1;
t=0:0.0005:4;
y=V_C+V_c*sin(2*%pi*f.*t);
clf();
subplot(121)
xtitle('Collector Voltage')
plot(t,y)
subplot(122)
xtitle('source and output ac voltage')
x=-V_s*sin(2*f*%pi.*t);
z=V_out_p*sin(2*%pi*f.*t);
plot(t,x,'r')
plot(t,z,'-.')
h1=legend(['source voltage';'output voltage'])
 