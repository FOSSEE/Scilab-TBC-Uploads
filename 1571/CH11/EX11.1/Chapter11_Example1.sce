clc
clear

//INPUT
k=0.12;//thermal conductivity in cgs unit
t1=200;//temperature at one side in deg.C
t2=50;//temperature at other side in deg.C
t=3600;//time in sec
a=1;//area in sq.cm
t3=3;//thickness of the plate in cm

//CALCULATIONS
q=k*a*(t1-t2)*t/t3;//amount of heat conducted in cal

//OUTPUT
mprintf('the amount of heat conducted is %3.2f cal',q)
