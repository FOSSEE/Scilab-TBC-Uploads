//mass-spring system
//free body diagram and state diagram are drawn as shown in figure 4-18(b) and 4-18(c)
//applying gain formula to state diagram
syms K M B
s=%s
M1=(1/M)*(s^-2)
L11=-(B/M)*(s^-1)
L21=-(K/M)*(s^-2)
delta=1-(L11+L21)
delta1=1
x=M1*delta1/delta
disp(x,"Y(s)/F(s)=")