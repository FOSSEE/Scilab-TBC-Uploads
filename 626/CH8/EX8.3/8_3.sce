clear;
clc;
close;
disp("Example 8.3")
M1=1.2 //Mach no at impeller tip
gm=1.4 //gamma
p31=(1+(gm-1)*M1^2)^(gm/(gm-1)) //p=p3/p1
p32=p31^(1/2) //p31=p3/p2
Cp=(2/(gm*M1^2))*(2.2-1) //static pressure rise in radial diffuser
disp(p31,"(a)The static pressure the rotor and diffuser p3/p1 :")
disp(p32,"The static pressure ratio across the diffuser p3/p2")
disp(Cp,"Diffuser static pressure rise :")
