//ques-18.20
//Calculating standard heat of formation and total change in heat capacities at constant pressure
clc
T1=273+25; T2=273+20;//temperature (in K)
//C = molar heat capacities at constant pressure (in cal/degree/mole)
C1=6.89;//hydrogen
C2=6.97;//oxygen
C3=8;//water
H1=-68.3;//enthalpy change (in kcal/mol)
Cp=C3-C1+C2/2;
H2=H1*1000+(T2-T1)*Cp;//enthalpy change (in kcal/mol)
printf("The standard heat of formation is %d kcal/mol and total change in heat capacities at constant pressure is %.3f kcal/mol.",H1,H2/1000);
