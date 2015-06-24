//transfer function of the system
//from state diagram in 4-1(b)
//initial conditions are taken as zero
//considering voltage across capacitor as output 
syms R L C
s=%s
M1=(1/L)*(s^-1)*(1/C)*(s^-1)
L11=-(s^-1)*(R/L)
delta=1-(L11)
delta1=1
x=M1*delta1/delta
disp(x,"Ec(s)/E(s)=")
//considering current in the circuit as output
M1=(1/L)*(s^-1)
delta1=1
y=M1*delta1/delta
disp(y,"I(s)/E(s)=")