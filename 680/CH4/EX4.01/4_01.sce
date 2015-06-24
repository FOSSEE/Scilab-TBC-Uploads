//Problem 4.01:

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

printf("\n\nResult\n\n")
printf("\n The x-direction supporting force is %.1f N and The y-direction supporting force is %.1f N",Fxgc,Fygc)