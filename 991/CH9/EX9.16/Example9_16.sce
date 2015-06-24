//Example 9.16. refer fig.9.53(b).
clc
RB1=7.5*10^3
RB2=6.8*10^3
RB3=3.3*10^3
RE=1.3*10^3
RC=2.2*10^3
beta1=120
beta2=120
VCC=18
VBE1=0.7
format(6)
disp("From the circuit given in Fig.9.53(b),")
disp("      IE2 = IE1 and hence, IC2 = IC1")
disp("Since,   beta1 = beta2")
disp("      IB1 = IC1/beta1 = IC2/beta = IB2")
disp("By voltage division,")
VB1=(RB3*VCC)/(RB3+RB2+RB1)
disp(VB1,"      VB1(V) = (RB3*VCC)/(RB3+RB2+RB1) =")
format(5)
IE1=(VB1-VBE1)/RE
x1=IE1*10^3
disp(x1,"      IE1(mA) = VE1/RE = (VB1-VBE1)/RE =")
format(6)
re1=(26*10^-3)/IE1
disp(re1,"      re1(ohm) = 26mV/IE1 =")
re2=re1
disp(re2,"      re2(ohm) =                 (since IE2 = IE1)")
disp("Voltage gain of the first stage,")
disp("      Av1 = -re1/re1 = -1")
disp("Voltage gain of the second stage,")
format(7)
Av2=RC/re2
disp(Av2,"      Av2 = RC / re2 =")
disp("Overall voltage gain,")
Av1=-1
Av=Av1*Av2
disp(Av,"      Av = Av1*Av2 =")