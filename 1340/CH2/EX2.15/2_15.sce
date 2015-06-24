clc;
syms s r1 r2 c1 c2 z1 z2;
z1 = (1+r1*c1*s)/(c1*s);disp(z1);
z2 = r2/(1+(r2*c2*s));disp(z2)
disp("for large A Vo(s)/Vi(s)= (z1(s)+z2(s))/z1(s)");
g = (z1+z2)/z1;
disp(g,"Vo(s)/Vi(s)=");
