s=%s;
TF=syslin('c',(k*(s+6))/(s*(s+2)*(s+5)*(s^2+7*s+12)));
disp(TF,"T(s)=")

x=denom(TF);
disp(x,"Characteristics equation=")

y=roots(x);
disp(y,"Poles of a system=")

disp("zeroes of the system is -6")

//pole zero plot 

p=poly([6 1],'s',"coeff")
q=poly([0 120 154 71 14 1],'s',"coeff")    //expanding the denominator
V=syslin('c',p,q)
plzr(V)
