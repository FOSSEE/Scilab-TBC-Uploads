//Chapter-10,Example10_10,pg10_36
R2=0.04
X2=0.2
//for Tm=Tst, sm=1
R21=X2
Rex=R2-R21
//for Tst=Tm/2........(1)
//Tst=k*(E2^2)*R21/((R21^2)+(X2^2))......(2)with added resistance
//from (1) and (2)
//(R21^2)-0.8*R21+0.04=0
a=1
b=-0.8
c=0.04
R21=(-b-sqrt((b^2)-4*a*c))/(2*a)//neglecting higher value
Rex=R21-R2
printf("external resistance\n")
printf("Rex=%.4f ohm per phase",Rex)
