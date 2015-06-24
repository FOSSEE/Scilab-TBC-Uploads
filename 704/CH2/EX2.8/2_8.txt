//Caption:calculate the suitable number of conductor per slot hence determine the actual value of flux
//Exam:2.8
clc;
clear;
close;
F_1=0.05;//flux per pole(in Wb )
N=350;//speed(in rpm)
P=8;//no of poles
A=P;//no of parallel path
E_g=240;//voltage generated (in V)
Z_1=E_g*60*A/(F_1*N*P);//total no of armature conductor required
C_s=ceil(Z_1/120);//number of conductor per slot
disp(C_s,'number of conductor per slot=');
A_s=120;//armature slots 
Z_2=A_s*C_s;//total conductors in armature slot
F_2=E_g*60*A/(N*Z_2*P);//Actual value of flux(in Wb)
disp(F_2,'Actual value of flux(in Wb)=');