clc
//Initialization of variables
pc=45.8 //atm
tc=343.9 //R
t=515 //R
v=2.2
R=0.73
//calculations
tr=t/tc
vr= pc*v/(R*tc)
//from compressibilty charts
z=0.803
pr=3
p=pr*pc
p2= R*t/v
err= (p2-p)/p
//results
printf("pressure = %d atm",p)
printf("\n percentage error = %d percent ",err*100)
//the answer varies a bit due to rounding off error
