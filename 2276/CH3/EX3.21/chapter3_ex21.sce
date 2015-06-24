clc
clear

//input
v=240;//voltage of a shunt motor in volts
ra=0.4;//armature resistance in ohms of the shunt motor
rf=160;//field resistance in ohms of the shunt motor
ia=30;//armature current in amperes
w=1250;//speed in rev/min

//calculations
//it is assumed that flux is proportoinal to the field current
E1=v-(ia*ra);//induced e.m.f. in volts
fi=v/rf;//field current in amperes
k=E1/(fi*w);
//if=k*(v/r2) where r2 is the resistance to be added
//ia1=(3*r2)/16 and E2=v-(ra*ia1)
//(E2/E1)=((24-0.4ia1)/228) and (E2/E1)=(192/r2)
//we get an equation for r2 as (r2^2)-(3200*r2)+583680=0
r21=((3200+(((3200*3200)-(4*1*583680))^0.5))/2);//one of two solution for r2 in ohms 
r22=((3200-(((3200*3200)-(4*1*583680))^0.5))/2);//one of two solution for r2 in ohms
R=r22-rf;//final resistance to be added in ohms and r22 is considered as the other value is too large and impractical

//ouput
mprintf('resistance to be added is %3.0f ohms',R)
