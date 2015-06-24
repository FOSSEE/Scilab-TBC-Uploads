clear;
clc;

//Example2.15[Heat Loss through a Steam Pipe]
//Given:-
L=20;//Pipe Length[m]
k=20;//[W/m.degree Celcius]
r1=0.06;//Inner Radius[m]
r2=0.08;//Outer Radius[m]
T1=150;//Temp of inner surface[degree Celcius]
T2=60;//Temp of outer surface[degree Celcius]
//Solution:-
//Integrating differential equation we get T(r)=C1logr+C2, where C1 and C2 are
C1=(T2-T1)/log(r2/r1);
C2=T1-((T2-T1/log(r2/r1))*log(r1));
Q_cyl=2*%pi*k*L*(T1-T2)/(log(r2/r1));
disp("kW",round(Q_cyl/1000),"The rate of heat conduction through the pipe is")
