//Ex8_8
clc
Ai = -60
hfe = 100
hoe = 10*10^-6
disp("hfe = "+string(hfe))//forward current gain
disp("hoe = "+string(hoe)+"A/V")//output conductance
disp("Ai = "+string(Ai))//current gain
disp("But, ...
Ai = -hfe/(1+ hoe*RL)")
RL = -(1/hoe)*(1+(hfe/Ai))
disp("Thus,...
RL = -(1/hoe)*(1+(hfe/Ai)) = "+string(RL)+"ohm")//load resistance
