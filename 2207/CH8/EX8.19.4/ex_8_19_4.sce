//Example 8.19.4:develepoed back emf,required armature voltage and firing angle and rated armature current
clc;
clear;
close;
//given data :
format('v',6)
hp=20;//
v=230;//volts
n=1000;//rpm
lt=50;//load torque in N-m
s=1000;//speed in rpm
ra=0.2;//in ohms
rf=150;//in ohms
la=10;//in mH
kv=0.7;//
vf=(2*sqrt(2)*v)/(%pi);//
If=vf/rf;//in amperes
ia=(lt/(kv*If));//in amperes
eg=((kv*2*%pi*n*If))/(60);//in volts
disp("part (a)")
disp(eg,"back emf in volts is")
disp("part (b)")
ea=eg+(ia*ra);//in volts
alpha=acosd((ea*%pi)/(2*sqrt(2)*v));//
disp(ea,"armature voltage in volts is")
disp(alpha,"firing angle in degree is")
disp("part (c)")
ea1=220;//in volts
ha20=746*20;//
iar=(ha20/ea1);//in amperes
disp(iar,"rated armature current in amperes is")
