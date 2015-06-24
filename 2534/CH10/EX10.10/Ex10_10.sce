//Ex10_10
clc
//parameters of emitter follower circuit:
hie = 1.1*10^3//input resistance
hfe = 80//current gain
hoe = 2*10^-5//output conductance
Re = 2.2*10^3//emitter resistance
disp("hie = "+string(hie)+"ohm")
disp("hfe = "+string(hfe))
disp("hoe = "+string(hoe)+"mho")
disp("Re = "+string(Re)+"ohm")
gm = hfe/hie
Rif = hie*(1+gm*Re)//input resistance with feedback
disp("Rif = hie*(1+gm*Re) = "+string(Rif)+"ohm")
Rof = hie/(1+hfe)//output resistance with feedback
disp("Rof = hie/(1+hfe) = "+string(Rof)+"ohm")
Avf = gm*Re/(1+gm*Re)//voltage gain with negative feedback
disp("Avf = gm*Re/(1+gm*Re) = "+string(Avf))
