clc;
s =%s;
for k = 12:4:20
G = syslin('c',k/(s^2+8*s+k));
disp(G);
den = denom(G);
coef = coeff(den);
Wn = sqrt(coef(1,1));disp(Wn,"Natural Frequency = ");
zeta = coef(1,2)/(2*Wn);disp(zeta,"Daming ratio = ");
if(zeta==1)
    printf("system is critically damped");
else if(zeta>1)
        printf("overdamped");
    else printf("underdamped");
        end
end
end