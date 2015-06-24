//Problem 4.02:

//initializing the variables:
mdt = 0.15; // in kg/sec
v = 420; // in m/sec

//calculation:
vxin = v
vxout = 0
vyin = 0
vyout = v
Fxgc = mdt*(vxout - vxin)
Fygc = mdt*(vyout - vyin)
Fres = (Fxgc^2 + Fygc^2)^0.5
theta = (atan(Fygc/Fxgc))*180/%pi + 180

printf("\n\nResult\n\n")
printf("\n resultant supporting force is %.1f N and direction is %.0f degree",Fres,theta)