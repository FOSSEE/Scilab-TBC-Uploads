//Ex1_2
clc
d=0.5*10^(-2)
disp("d = "+string(d)+"metre") //initializing value of distance b/w plates
l=2*10^(-2)
disp("l = "+string(l)+"metre") //initializing value of length of plates
L=20*10^(-2)
disp("L = "+string(L)+"metre") //initializing value of distance b/w centre of plates and screen
Va=2000
disp("Va = "+string(Va)+"volts") ////initializing value ofanode voltage
Vd=100
disp("Vd = "+string(Vd)+"volts") //initializing value of deflecting voltage
m=9.11*10^(-31)
disp("m = "+string(m)+"Kg") //mass of electron
q=1.6*10^(-19)
disp("q = "+string(q)+"coulomb") //charge on an electron
disp("horizontal beam velocity,Vx =(2*Va*q/m)^(0.5) metre/second") //formula
Vx =(2*Va*q/m)^(0.5)
disp("horizontal beam velocity,Vx =(2*Va*q/m)^(0.5)= "+string(Vx)+" metre/second")//calculation
disp("transit time,t1 =(l/Vx) second") //formula
t1=(l/Vx)
disp("transit time,t1 =(l/Vx)= "+string(t1)+" second")//calculation
disp("vertical beam velocity,Vy =(q*Vd*l/d*m*Vx) metre/second") //formula
Vy=((q*Vd*l)/(d*m*Vx))
disp("vertical beam velocity,Vy =(q*Vd*l/d*m*Vx)= "+string(Vy)+" metre/second")//calculation
disp("vertical displacement,D =((l*L*Vd)/(2*d*Va) metre")//formula
D =(l*L*Vd)/(2*d*Va)
disp("vertical displacement,D =((l*L*Vd)/(2*d*Va)="+string(D)+" metre")//calculation
disp("sensitivity of CRT,S =(0.5*l*L)/(d*Va) metre/volt")//formula
S =(0.5*l*L)/(d*Va)
disp("sensitivity of CRT,S =(0.5*l*L)/(d*Va)="+string(S)+" metre/volt")//calculation



