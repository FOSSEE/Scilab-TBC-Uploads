//mass-spring system
//free body diagram and state diagram are drawn as shown in figure 4-19(b) and 4-19(c)
//applying gain formula to state diagram
syms K M B
s=%s
//considering y1 as output
M1=(1/M)
L11=-(B/M)*(s^-1)
L21=-(K/M)*(s^-2)
L31=(K/M)*(s^-2)
delta=1-(L11+L21+L31)
delta1=1-(L11+L21)
x=M1*delta1/delta
disp(x,"Y1(s)/F(s)=")
//considering y2 as output
M1=(1/K)*(K/M)*(s^-2)
delta1=1
y=M1*delta1/delta
disp(y,"Y2(s)/F(s)=")
