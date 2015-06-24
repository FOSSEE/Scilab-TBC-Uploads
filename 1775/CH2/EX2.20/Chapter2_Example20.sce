//Chapter-2, Illustration 20, Page 79
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
P1=0.1;//Pressure at point 1 in MPa
T1=303;//Temperature at point 1 in K
T3=1173;//Temperature at point 3 in K
rp=6;//Pressure ratio
nC=0.8;//Compressor efficiency
nT=nC;//Turbine efficiency
e=0.75;//Regenerator effectiveness
y=1.4;//Ratio of specific heats
Cp=1.005;//Specific heat at constant pressure in kJ/kg-K

//CALCULATIONS
x=(y-1)/y;//Ratio
T2s=T1*(rp^x);//Temperature at point 2s in K
T4s=T3/(rp^x);//Temperature at point 4s in K
DTa=(T2s-T1)/nC;//Difference in temperatures at point 2 and 1 in K
DTb=(T3-T4s)*nT;//Difference in temperatures at point 3 and 4 in K
wT=Cp*DTb;//Turbine work in kJ/kg
wC=Cp*DTa;//Compressor work in kJ/kg
T2=DTa+T1;//Temperature at point 2 in K
q1=Cp*(T3-T2);//Heat supplied in kJ/kg
nth1=((wT-wC)/q1)*100;//Cycle efficiency without regenerator
T4=T3-DTb;//Temperature at point 4 in K
T5=T2+(e*(T4-T2));//Temperature at point 5 in K
q2=Cp*(T3-T5);//Heat supplied with regenerator in kJ/kg
nth2=((wT-wC)/q2)*100;//Cycle efficiency with regenerator
p=((nth2-nth1)/nth1)*100;//Percentage increase due to regeneration

//OUTPUT
mprintf('Percentage increase in the cycle efficiency due to regeneration is %3.2f percent',p)








//==============================END OF PROGRAM=================================
