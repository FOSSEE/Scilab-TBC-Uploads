clc
Pp=10^18
disp("Pp = "+string(Pp)+"/cm^3") //initializing value of doping concentration in p region.
Nn=10^15
disp("Nn = "+string(Nn)+"/cm^3") //initializing value of doping concentration in n region.
tp=7*10^-6
disp("tp = "+string(tp)+"s") //initializing value of hole lifetime.
tn=0.2*10^-6
disp("tn = "+string(tn)+"s") //initializing value of electron lifetime.
up=800
disp("up = "+string(up)+"cm2/Vs") //initializing value of P side mobility.
un=300
disp("un = "+string(un)+"cm2/Vs") //initializing value of n side mobility.
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing value of intrinsic concentration.
Vf=0.6
disp("Vf = "+string(Vf)+"V") //initializing value of forward bias voltage.
A=100*10^-6
disp("A = "+string(A)+"m^2") //initializing value of diode cross-sectional area.
e=1.6*10^-19
disp("e = "+string(e)+"columns") //initializing value of charge of electrons.
K=1.38*10^-23
disp("K = "+string(K)+"J/k") //initializing value of boltzmann constant.
T=300
disp("T = "+string(T)+"K") //initializing value of temperature.
Vt=(K*T/e)
disp("Vt=(K*T/e))="+string(Vt)+"eV")//calculation.
Dp=Vt*un
disp("Dp=Vt*un="+string(Dp)+"cm^-3")//calculation.
Dn=Vt*up
disp("Dn=Vt*up="+string(Dn)+"cm^-3")//calculation.
Lp=sqrt(Dp*tp)
disp("Lp=(sqrt(Dp*tp))="+string(Lp)+"cm")//calculation.
Ln=(sqrt(Dn*tn))
disp("Ln=(sqrt(Dn*tn))="+string(Ln)+"cm")//calculation.
npo=(no^2/Pp)
disp("npo=(no^2/Pp)="+string(npo)+"cm^-3")//calculation.
Ppo=(no^2/Nn)
disp("Ppo=(no^2/Nn)="+string(Ppo)+"cm^-3")//calculation.
Io=(((Dp*Ppo)/(Lp))+((Dn*npo)/(Ln)))*e*A
disp("Reverse saturation current ,Io=(((Dp*Ppo)/(Lp))+((Dn*npo)/(Ln)))*e*A="+string(Io)+"A")//calculation.
If=Io*((exp(Vf/Vt))-1)
disp("Diode forward current,If=Io*((exp(Vf/Vt))-1)="+string(If)+"A")//calculation.
//the value of Io(reverse saturation current ),after calculation is provided wrong in the book.Due to which If (diode forward current )also differ.






























