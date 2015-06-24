s=%s;
syms k
H=syslin('c',k/(s*(s+4)*(s^2+(4*s)+20)))
evans(H,1000)
printf("Since there are no open loop zeros all branches terminate at infimity")