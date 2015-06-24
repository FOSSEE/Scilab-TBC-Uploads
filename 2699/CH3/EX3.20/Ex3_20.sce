//EX3_20 PG-3.57
clc
Rf=.01;//ripple factor in percentage
Rl=2;//load resistance in kohm
f=50;//frequency
disp("the %ripple factor=Rf=((4*sqrt(3)*f*C*Rl))^(-1)*100 ")
C=((4*sqrt(3)*f*Rf*Rl))^(-1)*100;//filter capacitor
printf("\n the filter capacitor is %.3f mF",C)
