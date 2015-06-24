clc
clear
disp('example 14.15')
v=220  //line voltage
ps=11 ;ss=220;pr=220;sr=11  //primer and secondary end terminal voltages of tapping transformer
zr=20;zi=60  //impedence of line in real ndimagenary parts
p=100  //power at recieving end is 100MVA
pf=0.8  //power factor at recievin end
t=1   //prodect of 2 off terminal tap setting is  1
vt=11  //tap setting for 11 kv voltage bus
P=(p*pf*10^6)/3 //real power 
Q=(p*sind(acosd(pf))*10^6)/3  //reactance power
v1=v*(10^3)/sqrt(3)
ts=(1/(1-(zr*P+zi*Q)/(v1^2)))^(0.5)
printf(" tapping ratio at the source %.3f  \n tapping ratio at the receving end %.2f",ts,1/ts)