clc
//initialisation of variables
p1=100//lb/in^2
p2=15//lb/in^2
d1=95//percent
d2=30//percent
P=0.58*p1//lb/in^2
H=0.95*25//C.H.U/lb
H1=0.95*76.5//C.H.U/lb
D=0.97//in
D1=0.905//in
V=7.407//ft^3
V1=sqrt(2*32.2*1400*H)//ft/sec
V2=sqrt(2*32.2*1400*H1)//ft/sec
//CALCULATIONS
V3=(2*%pi*1*V1)/(64*4*144)//ft^3
W=(V3*3600)/(V*D)//lb
K=V2/(2*32.2)//ft lb sec
E=[((V2)^2*W)/(2*32.2*3600)]//ft.lb
W1=(E*d2)/(p1*550)//ft.lb
//RESULTS
printf('the quantity of steam used per hour and horse power developed=% f ft.lb',W1)
