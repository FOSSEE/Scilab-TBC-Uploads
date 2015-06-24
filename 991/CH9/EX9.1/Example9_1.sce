//Example 9.1.
clc
format(7)
disp("  Exact analysis :")
AI=(-50)/(1+((25*10^-6)*(10^3)))
disp(AI,"Current gain,  AI = -hfe / 1+hoe*RL =")
Ri=1000-((50*2*10^-4)/((25*10^-6)+(1/1000)))  //in ohm
disp(Ri,"Input resistance,  Ri(ohm) = hie - (hfe*hre / hoe+(1/RL)) =")
Av=(-48.78)*(1000/990.24)
disp(Av,"Voltage gain,    Av = AI*(RL/Ri) =")
disp("Output resistance,  Ro")
format(10)
Yo=(25*10^-6)-((100*10^-4)/(1000+800))  //in mho
disp(Yo,"      Yo(mho) = hoe - (hfe*hre / hie+Rs) =")
format(6)
Ro=1/Yo //in ohm
x1=Ro*10^-3
disp(x1,"      Ro(k-ohm) = 1/Yo =")
disp("  Approximate analysis")
disp("        AI = -hfe = -50")
disp("        Ri = hie = 1 k-ohm")
Av=-(50*1000)/1000
disp(Av,"        Av = - hfe*RL / hie =")
disp("        Ro = infinity")