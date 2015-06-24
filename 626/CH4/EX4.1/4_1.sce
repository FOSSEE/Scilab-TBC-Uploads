clear;
clc;
close;
disp("Example 4.1");
M0=0.85
p0=10000 //ambient static pressure in Pa
pt2=15.88*10^3 //total pressure at the engine face in Pa
gm=1.4 //gamma
pt0=p0*((1+((gm-1)*(M0)^2)/2)^(gm/(gm-1)))
Pr=pt2/pt0 //Pr=total pressure recovery
ie=((pt2/p0)^((gm-1)/gm)-1)/(((gm-1)/2)*M0^2) //inlet adiabatic efficiency.
de=-log(Pr)
disp(Pr,"(a)The inlet total pressure recovery:")
disp(ie,"(b)The inlet adiabatic efficiency:")
disp(de,"(c)The nondimensional entropy rise caused by the inlet:")

 