//Chapter-2, Illustration 17, Page 75
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
T1=283;//Temperature at point 1 in K
T3=1353;//Temperature at point 3 in K
y=1.41;//Ratio of specific heats
Cp=1.007;//Specific heat constant pressure in kJ/kg-K

//CALCULATIONS
x=(y-1)/y;//Ratio
rpmax=((T3/T1)^(1/x));//Maximum pressure ratio
rpopt=sqrt(rpmax);//Optimum pressure ratio
T2=T1*(rpopt^x);//Temperature at point 2 in K
T4=T2;//Maximum temperature at point 4 in K
Wmax=Cp*((T3-T4)-(T2-T1));//Maximum net specific work output in kJ/kg
nth=(Wmax/(Cp*(T3-T2)))*100;//Thermal efficiency
WR=nth/100;//Work ratio
nc=((T3-T1)/T3)*100;//Carnot efficiency

//OUTPUT
mprintf('Optimum pressure ratio is %3.2f \n Maximum net specific work output %3.0f kJ/kg \n Thermal efficiency %3.0f percent \n Work ratio is %3.2f \n Carnot efficiency is %3.0f percent',rpopt,Wmax,nth,WR,nc)






//==============================END OF PROGRAM=================================
