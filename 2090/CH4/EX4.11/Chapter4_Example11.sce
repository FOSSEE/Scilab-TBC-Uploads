clc
clear
//Input data
p=65;//The pressure in the cylinder in bar
r=10;//The compression ratio 
V3=0.1;//The volume per unit mass of air at the start of expansion in m^3/kg air 
p3=p*100;//The pressure in the cylinder after the completion of combustion in kN/m^2 

//Calculations 
T3=2240;//The temperature from the chart corresponding to p3,V3 in K
u3=-1040;//The energy from the chart in kJ/kg air 
s3=8.87;//The entropy from the chart in kJ/kg air K
s4=s3;//Since the process is isentropic 
V4=r*V3;//The volume per unit mass of air at the end of expansion stroke in m^3/kg air 
T4=1280;//The temperature from the chart corresponding to p4,V4 in K 
u4=-2220;//The energy from the chart in kJ/kg air 
p4=4.25;//The pressure from the chart in bar 
W=-(u4-u3);//Work of expansion in kJ/kg air 

//Output
printf('(a)At the end of expansion stroke, \n The pressure is %3.2f bar \n The temperature is %3.0f K \n The volume is %3.1f m^3/kg air \n (b)The work during the expansion stroke is %3.0f kJ/kg air ',p4,T4,V4,W)
