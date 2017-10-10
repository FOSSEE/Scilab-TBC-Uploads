clc
clear
//INPUT DATA
p1=120;//Pressure in kN/m^2
t1=303;//temperature in K
v1=0.0708;//specific volume in m^3/s
v2=0.004165;//specific volume in m^3/s
t3=1423;//temperature in K
t4=1873;//temperature in K
cp=1.005;//specific pressure
cv=0.718;//specific volume
R=0.287;//gas constant
g=1.4;//constant

//CALCULATIONS
ro=t4/t3;//cutoff ratio
Rc=v1/v2;//Compression ratio
t2=t1*(Rc^(g-1));//temperature in K
v45=(ro/Rc);//specific volume in m^3/s
t5=t4*((v45)^(g-1));//temperature in K
Qs=cv*(t3-t2)+cp*(t4-t3);//heat added in kJ/kg
Qr=cv*(t5-t1);//heat rejected in kJ/kg
nd=((Qs-Qr)/Qs)*100;//thermal efficiency in percentage

//OUTPUT
printf('(a)cutoff ratio %3.3f \n (b)Compression ratio is %3.1f \n (c)Heat added is %3.2f kJ/kg \n  heat rejected is %3.2f kJ/kg \n (d)The thermal efficiency in %3.2f percentage',ro,Rc,Qs,Qr,nd)



