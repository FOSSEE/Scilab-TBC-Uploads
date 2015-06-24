clear
clc
T=391;//temperature in K
Yb=0.045;//
Ya=0.955;//
T=410;//in K
X=50/100;//
XA=0.09;//composition of liquid at l2
XB=0.91;//composition of liquid at l2
YA=0.74;//composition of liquid at v2
YB=0.26;//composition of liquid at v2
N=(YA-X)/(X-XA);//
M1=(X-XA)/((YA-X)+(X-XA))*100;//mol % of vapour
printf('M1=%.2f',M1)
M2=100-M1;//mol % of vapour
printf('\nM2=%.2f',M2)
XA1=0.035;//composition of liquid at l3
XB1=0.965;////composition of liquid at l3
Yaf=0.743;//
X1=(Ya+Yaf)/2;//
printf('\nX1=%.2f',X1)

//page 154
