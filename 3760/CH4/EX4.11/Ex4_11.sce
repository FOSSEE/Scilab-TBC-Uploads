clc;
P=4;//No of poles
Pout=100000;//Output power in watts
Vt=200;//terminal voltage
Z=256;//No of conductors
A=4;//no of parallel paths of armature conductors
Ia=Pout/Vt;//armature current
Bcp=0.25;//interpolar flux density in tesla
gcp=0.01;//interpolar air gap length
U=4*%pi*0.0000001;//permeability of air
Fcp=((Ia*Z)/(2*A*P))+((Bcp/U)*(gcp));//The interpolar m.m.f. per pole
Ncp=Fcp/Ia;
printf('The turns on each interpoles should be equal to %f.',round(Ncp));
