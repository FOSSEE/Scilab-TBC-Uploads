clc
clear
disp("example 10 13")
a1=2000;b1=20;c1=0.05;p1=350;p2=550
a2=2750;b2=26;c2=0.03091
function [co]=cost(a,b,c,p)
    co=a+b*p+c*p^2
endfunction
disp("(a)")
toco=cost(a1,b1,c1,p1)+cost(a2,b2,c2,p2)
printf("total cost when each system supplies its own load Rs%.3f per hour",toco)
l=p1+p2
p11=(b2-b1+2*c2*l)/(2*(c1+c2))
p22=l-p11
totco=cost(a1,b1,c1,p11)+cost(a2,b2,c2,p22)
sav=toco-totco
tilo=p11-p1
disp("(b)")
printf("\n total cost when load is supplied in economic load dispatch method Rs%d per hour \n saving %.3f \n tie line load %.3f MW",totco,sav,tilo)
