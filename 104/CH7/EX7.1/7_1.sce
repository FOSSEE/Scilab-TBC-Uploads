//type of system
s=%s
G1=syslin('c',(1+0.5*s)/(s*(1+s)*(1+2*s)*(1+s+s^2)))
disp(G1,"G(s)=")
printf("type 1 as it has one s term in denominator")
G2=syslin('c',(1+2*s)/s^3)
disp(G2,"G(s)=")
printf("type 3 as it has 3 poles at origin")