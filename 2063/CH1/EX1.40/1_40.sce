clc
clear
//Input data
P1=1;//Pressure of air received by the gas turbine plant in bar
T1=300;//Initial Temperature in K
P2=5;//Pressure of air after compression in bar
T3=850;//Temperature of air after the compression in K
nc=80;//Efficiency of the compressor in percent
nt=85;//Efficiency of the turbine in percent
r=1.4;//Isentropic index of gas
P3=P2;//Since 2-3 is constant pressure process in bar
P41=1;//Pressure at the point 41 in bar
Cp=1.05;//Specific heat of the gas at constant pressure in kJ/kg K

//Calculations
T21=T1*(P2/P1)^((r-1)/r);//Temperature at the point 21 on the curve in K
T2=(T21-T1)/(nc/100)+T1;//Temperature at the point 2 in K
T41=T3/(P3/P41)^((r-1)/r);//Temperature at the point 41 in K
T4=T3-((nt/100)*(T3-T41));//Temperature of gas at the point 4 in K
Wt=Cp*(T3-T4);//work done by the turbine in kJ/kg of air
Wc=Cp*(T2-T1);//Work done by the compressor in kJ/kg of air
Wn=Wt-Wc;//Net work done by the plant in kJ
nt=(Wn/(Cp*(T3-T2)))*100;//Thermal efficiency of the plant in percentage 

//Output
printf('Overall efficiency of the plant is %3.2f percent',nt)
