clc
//initialization of new variables
clear
r1=0.1 //m
r2=0.4 //m
bet=15 //degrees
eta=0.9
cp=0.24
w=5000 //RPM
Cth1=0
gama=1.4
T01=300 //K
//calculations
bet=bet*%pi/180
U2=r2*w*2*%pi/60
U1=r1*w*2*%pi/60
wr2=U2/2
cp=cp*4200
Cth2=wr2*tan(bet)+U2
Tr=(U2*Cth2-U1*Cth1)/(cp*T01)
Pr=(1+eta*Tr)^(gama/(gama-1))
//results
printf('The pressure rise is %.2f',Pr)
