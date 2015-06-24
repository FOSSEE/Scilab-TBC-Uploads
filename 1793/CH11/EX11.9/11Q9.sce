clc
t90=75*24*60*60 // time in sec
T90=0.848
Hd=1.5*100 //in cm
Cv=T90*Hd^2/t90
printf('Cv = %f cm^2/sec',Cv)
