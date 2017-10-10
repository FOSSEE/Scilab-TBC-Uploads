clc;
P=4; 
N=1440; 
f=50;
r2=0.2;
x2=1;
E2=120;

//mistake in Te_fl


//for part a
disp('For part a');
Ns=(120*f)/P;
I2_st=120/(sqrt((r2*r2)+(x2*x2)));
Rpf=(r2)/(sqrt((r2*r2)+(x2*x2)));
Ws=(2*3.14*Ns)/60;
Te_st=(3/Ws)*(I2_st)*(I2_st)*(r2/1);
s_fl=(Ns-N)/Ns;
I2_fl=(s_fl*E2)/(sqrt(r2*r2+(s_fl*x2*s_fl*x2)));
Rpf_fl=(r2)/(sqrt(r2*r2+(s_fl*x2*s_fl*x2)));
Te_fl=((3)*(I2_fl)*(I2_fl)*(r2))/(Ws*s_fl);
RATIOst_fl=I2_st/I2_fl;
RATIOtst_tfl=Te_st/Te_fl;
mprintf('At starting \n the rotor current is %f amp \n Rotor power factor is %f \n Torque is %f rad/sec\n',I2_st,Rpf,Te_st);
mprintf('At full load \n the rotor current is %f amp \n Rotor power factor is %f \n Torque is %f rad/sec\n',I2_fl,Rpf_fl,Te_fl);


//for part b
disp('For part b');
r2_n=r2+1;
I2_stn=E2/(sqrt((r2_n*r2_n)+(x2*x2)));
Rpf_stn=(r2_n)/(sqrt(((r2_n)*(r2_n))+((x2)*(x2))));
Te_stn=(3/Ws)*(I2_stn)*(I2_stn)*(r2_n/1);
mprintf('At starting \n the rotor current is %f amp \n Rotor power factor is %f \n Torque is %f rad/sec\n',I2_stn,Rpf_stn,Te_stn);
