//EX6_4 PG-6.34
clc
Vbb=20;
Ct=0.1e-6;//capacitance
Rt=10e3;//resistance 
Vv=1.5;//valley potential
Vd=0.7;//cut in voltage of diode 
n=0.6;//stand off ratio
Vp=n*Vbb+Vd;
disp("We know that Vp=Vbb(1-exp(-T/(Rt*Ct)))")
x=(Vp-Vv)/Vbb;//x=(1-exp(-T/(Rt*Ct))
y=1-x;//y=exp(-T/(Rt*Ct)
z=Rt*Ct;
T=-log(y)*z;//time period
fo=1/T;//frequency of oscillations
fo=fo*1e-3;
printf("\n Therefore frequency of oscillation is %.3f kHz \n",fo)
