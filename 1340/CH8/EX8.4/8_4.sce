clc;
s =%s;
printf("Break in and  Break away points satisy the relation:\n");
printf("sum(1/(real(s)+Zi)= sum(1/(real(s)+Pi)");
G = syslin('c',1/(s-3)+1/(s-5)-1/(s+2)-1/(s+1));
disp(G);x =roots(numer(G));
disp(x(2),"break-away point =",x(1),"break-in point =");