clc
clear
//INPUT DATA
cp=1.005;//specific pressure
cv=0.718;//specific volume
R=0.287;//gas constant
p1=100;//Pressure in kPa
t1=30;//temperature in Degree C
t2=800;//temperature in Degree C
g=1.4;//constant
Rc=5;//compression ratio
Qs=900;//heat supplied in kJ/kg
nr=0.75;//regenerator efficiency in percentage


//CALCULATIONS
Qs1=R*(t2+273)*log(Rc)+(1-nr)*cv*(t2-t1);//heat supplied in kJ/kg
m=Qs/Qs1;//mass flow rate in kg/min
wn=(m/60)*R*log(Rc)*(t2-t1);//net work done in kW
ns=(wn/(Qs/60))*100;//Thermal efficiency in percentage
vs=((m)*R*(t1+273)*(1-(1/Rc)))/(p1*60);//swept volume in m^3/s
pm=wn/vs;//mean effective pressure in kN/m^2
P=wn*1;//Power developed by the engine in kW

//OUTPUT
printf('(i)The net work done is %3.2f kW \n (ii)Thermal efficiency is %3.2f percentage \n (iii)mean effective pressure is %3.2f kN/m^2 \n (iv)Power developed by the engine is %3.2f kW ',wn,ns,pm,P)

