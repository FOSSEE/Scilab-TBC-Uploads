clc
clear
//INPUT DATA
p3=20;//Pressure of air in bar
v3=0.2;//volume of air in m^3
Th=500;//engine temprature in Degree C
v23=7;//Isentropic compression ratio
v43=2;//Isentropic volume expansion
v3=0.2;//volume in m^3

//CALCULATIONS
Tl=(Th+273)/((v23)^(1.4-1));//minimum temperature in K
p2=p3/((v23)^(1.4));//pressure in bar
p4=p3*10^2*(1/(v43));//isentropic expansion pressure 
p1=((1/(v23))^1.4)*p4;//isentropic compression
s43=(p3*10^2*v3/(Th+273))*log(v43);//Change in entropy in kJ/K
nc=(((Th+273)-Tl)/(Th+273))*100;//Efficiency of carnot cycle in percentage
v1=v43*7*v3;//volume in m^3
vs=v1-v3;//swept volume in m^3
wd=(p3*10^2*v3-p1*v1)*log(2);//workdone in kJ/cycle
P=wd/2.6;//Mean effective pressure in kN/m^2
p=wd*(200/60);//power of engine in kW

//OUTPUT
printf('(a)The minimum temperature in the cycle is %3.2f K \n (b)Change in entropy during isothermal expansion is %3.4f kJ/K \n (c)Thermal efficiency of the cycle is %3.2f percentage \n (d)The mean effective pressure is %3.2f kN/m^2 \n (e)Power of the engine is %3.2f kW',Tl,s43,nc,P,p)



