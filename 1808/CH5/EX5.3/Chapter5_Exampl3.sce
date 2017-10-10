clc
clear
//INPUT DATA
t1=293;//temperature in K
p1=1;//pressure in bar
p2=8;//pressure in bar
v1=80;//volume in m^3
g=1.4;//for isentropic compression
n=1.25;//Adiabatic compression

//CALCULATIONS

//Isothermal compression
v2=p1*v1/p2;//volume in m^3
wn=p1*10^2*v1*log(p2/p1);//net work done in kJ/min
P=wn/60;//Power required in kW

//Adiabatic compression
v121=(p2/p1)^(1/g);//volume in m^3/min
v21=v1/v121;//volume in m^3/min
t211=t1*(p2/v121);//temperature at the end of the compression
wn1=(g/(g-1))*p1*10^2*v1*(((p2/p1)^((g-1)/g))-1);//net work done in kJ
P1=wn1/60;//Power in kW

//Polytropic process
v12=(p2/p1)^(1/n);//volume in m^3/min
v22=v1/v12;//volume in m^3/min
t2=t1*(p2/v12);//temperature in K
wn2=(n/(n-1))*p1*10^2*v1*(((p2/p1)^((n-1)/n))-1);//net work done in kJ
P2=wn2/60;//power required in kW
Qc=((g-n)/(g-1))*P2;//Heat transferred in kW

//OUTPUT
printf('(a)Isothermal compression \n temperature at the end of the compression is 293K \n net work done is %3.2f kJ/min \n Power required is %3.3f kW \n ',wn,P)
printf('(b)Adiabatic compression \n temperature at the end of the compression is %3.2f K \n net work done is %3.2f kJ/min \n Power required is %3.3f kW \n ',t211,wn1,P1)
printf('(c)Polytropic compression \n temperature at the end of the compression is %3.2f K \n net work done is %3.2f kJ/min \n Power required is %3.3f kW \n Heat rejected is %3.2f kW\n ',t2,wn2,P2,Qc)

