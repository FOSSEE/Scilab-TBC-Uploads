clc
clear
//INPUT DATA
Rc=17;//compression ratio
p1=101.325;//Pressure in kN/m^2
t1=303;//temperature in K
ro=2.28;//cutoff ratio
g=1.4;//constant
cp=1.005;//specific pressure 
cv=0.718;//specific volume 
R=0.287;//gas constant
v1=0.06375;//specific volume in m^3/s
v2=0.00375;//specific volume in m^3/s
t4=960.62;//temperature in K

//CALCULATIONS
p3=p1*(Rc^(g));//maximum pressure in kN/m^2
t2=t1*(Rc^(g-1));//temperature in K
t3=t2*(ro);//maximum temperature in K
nd=(1-(((1/(Rc^(g-1))))*(((ro^g)-1)/((ro-1)*g))))*100;//Air standard efficiency in precentage
Qs=cp*(t3-t2);//heat supplied in kJ/kg
wn=nd*Qs/100;//workdone in KJ/kg
m=p1*v1/(R*t1);//mass flow rate in kg/s
P=wn*m;//power developed in kJ/s
wt=(((g*(ro-1)*(Rc^(g-1)))-((ro^g)-1))/((g*(ro-1)*(Rc^(g-1)))-((ro^g)-(Rc^(g-1)))));//workdone in kJ/kg
Rw=wn/wt;//work ratio
w12=cv*(t1-t2);//workdone in 1-2 process
w23=R*t2*(ro-1);//workdone in 2-3 process
w34=cv*(t3-t4);//orkdone in 3-4 process
pw=w23+w34;//positive work
Rw=(wn/pw);//Work ratio

//OUTPUT
printf('(a)The maximum pressure %3.2f kN/m^2 \n   temperature is %3.2f K \n (b)The thermal efficiency is %3.2f percentage \n(c)The power developed is %3.4f kg/s \n (d)work ratio is %3.4f ',p3,t3,nd,P,Rw)



