clc
clear
//INPUT DATA
p1=1;//cold chamber pressure in bar
p2=6;//compressor pressure in bar
g=1.4;//constant
t1=278;//temperature in K
t3=298;//temperature in K
cp=1.005;//specific pressure
n1=1.3;//index of compression
n2=1.35;//index of compresion
R=0.287;//gas constant

//CALCULATIONS
t2=t1*((p2/p1)^((g-1)/g));//temperature in K
t4=t3/((p2/p1)^((g-1)/g));//temperature in K
Qa=cp*(t1-t4);//Refrigeration effect
Qr=cp*(t2-t3);//heat rejected to the cooling medium in kJ/kg
wn=Qr-Qa;//net work done in kJ/kg
copa=Qa/wn;// actual COP
t21=t1*((p2/p1)^((n1-1)/n1));//temperature in K
t41=t3/((p2/p1)^((n2-1)/n2));//temperature in K
Qa1=cp*(t1-t41);//Refrigeration effect
wn1=(n1/(n1-1))*R*(t21-t1)-(n2/(n2-1))*R*(t3-t41);//net work done in kJ/kg
copb=Qa1/wn1;// actual COP
P1=210/(60*copa);//Power per ton of refrigeration in kW/TR
m1=210*3600/(60*Qa);//air flow rate in kg/hr
P2=210/(60*copb);//Power per ton of refrigeration in kW/TR
m2=210*60/(Qa1);//air flow rate in kg/hr

//OUTPUT
printf('(a) \n (i)Refrigeration effect is %3.2f kJ/kg \n (ii)heat rejected to the cooling medium is %3.2f kJ/kg \n (iii)COPa %3.3f \n (b) \n (I)Refrigeration effect is %3.2f kJ/kg \n CASE A \n (1)Power per ton of refrigeration is %3.3f kW/TR \n (2)air flow rate is %3.2f kg/hr \n CASE B \n (1)Power per ton of refrigeration is %3.3f kW/TR \n (2)air flow rate is %3.2f kg/hr',Qa,Qr,copa,Qa1,P1,m1,P2,m2)










