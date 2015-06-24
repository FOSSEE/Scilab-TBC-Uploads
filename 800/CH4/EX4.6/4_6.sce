//clear//
clc
clear
exec("4.6data.sci");

FT0 = FA0+FB0+FI;
yA0 = FA0/FT0;
e = yA0*(1-.5-1);
PA0 = yA0*P0;
kdes = k*PA0*(1/2)^(2/3);
alpha = 2*bita0/(Ac*(1-phi)*rhoc*P0);
W = (1 - (1-(3*alpha*FA0/(2*kdes))*((1+e)*log(1/(1-X))-e*X))^(2/3))/alpha;


disp("W")
disp(W)
disp("lb of catalyst per tube")
