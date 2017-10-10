// mass flow rate is calculated on velocity 
clc
vr1=5 //m/s
p=1000
A=0.02*0.4
m=vr1*p*A
mprintf('m= pAVr1= %d kg/s',m)
vrlx=5
vr2=5
Fx=m*(vrlx-vr2*cosd(30))
mprintf('\n  Fx= %f N',Fx)
vly=0// given vrly=0
Fy=-m*vr2*sind(30)
mprintf('\n Fy= %f N',Fy)
