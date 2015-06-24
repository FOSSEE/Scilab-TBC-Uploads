//transfer function of electric network
//from state diagram in 4-2(b)
//inital conditions are taken as zero
//considering i1 as output
syms R1 R2 L1 L2 C
s=%s
M1=(1/L1)*(s^-1)
L11=-(s^-1)*(R1/L1)
L21=-(s^-1)*(1/C)*(s^-1)*(1/L1)
L31=-(s^-1)*(1/L2)*(s^-1)*(1/C)
L41=-(s^-1)*(R2/L2)
L12=L11*L31
L22=L11*L41
L32=L21*L41
delta=1-(L11+L21+L31+L41)+(L12+L22+L32)
delta1=1-(L31+L41)
x=M1*delta1/delta
disp(x,"I1(s)/E(s)=")
//considering i2 as output
M1=(1/L1)*(s^-1)*(1/C)*(s^-1)*(1/L2)*(s^-1)
delta1=1
y=M1*delta1/delta
disp(y,"I2(s)/E(s)=")
//considering voltage across capacitor as output
M1=(1/L1)*(s^-1)*(1/C)*(s^-1)
delta1=1-L41
z=M1*delta1/delta
disp(z,"Ec(s)/E(s)=")
