clc
clear
//Initialization of variables
disp("From table 1 of keenan and keynes,")
in=440000 //lb/hr
out=255000 //lb/hr
p1=400 //psia
t1=700 //F
p2=35 //psia
t2=290 //F
vel=500 //ft/s
hp=44000 //hp
ent=1362.7 //Btu/lb
//calculations
ein=ent*in
eout=hp*2544 + out*1183 + 925000
h2= (ein-eout)/185000
//results
printf("Specific enthalpy of exhaust steam = %d Btu/lb",h2)
