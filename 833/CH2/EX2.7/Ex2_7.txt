//Caption: Calculate (a)Z,X,R reffered to h.v side (b)Regulaton on full load at 0.8 power factor lagging (c)Terminal voltage on l.v side on full load at pf=0.8 lagging (d)Efficiency of transformer when current=250A,pf=0.8 lagging is load connected to l.v side and voltage at h.v side is 11000 volts
//Exa:2.7
clc;
clear;
close;
P_s=220000//Supplied power (in VA)
V_1=11000//Primary side voltage(in volt)
V_2=440//Secondary side voltage(in volt)
P_i=2200//Iron losses(in watt)
V=500//voltage applied to high voltage side for open circuit test(in volt)
P=2000//Wattmeter reading for open circuit test(in watt)
pf=0.8//Power factor
I=250//Load current(in A)
I_fl=P_s/V_1
r=P/(I_fl^2)
z=V/I_fl
x=sqrt(z^2-r^2)
disp(r,x,z,'(a)Z,X,R(in ohms)=')
Re=(I_fl*r*pf)+(I_fl*x*sind(acosd(pf)))
disp(Re,'(b)Regulation on full load on high voltage side(in volts)=')
Re_1=(Re*V_2)/V_1
disp(Re_1,'Regulation on full load on low volrage side(in volts)=')
V_t=V_2-Re_1
disp(V_t,'(c)Terminal voltage on low voltage side on full load(in volts)=')
I_c=I*V_2/(V_1)
W_c=P/(2^2)
Eff=(V_1*I_c*pf)/((V_1*I_c*pf)+(P_i)+(W_c))*100
disp(Eff,'(d)Efficiency of transformer(in%)=')