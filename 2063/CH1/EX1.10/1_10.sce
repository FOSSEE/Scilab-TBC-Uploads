clc
clear
//Input data
T3=1500;//Upper temperature limit of a otto cycle in K
T1=300;//Lower temperature limit in K
a=0.4;//Rate of flow of air through the cycle in kg/min
Cv=0.718;//

//Calculations
T2=(T1*T3)^(1/2);//Temperature at point 2 in K
T4=T2;//Temperature at point 4 in K
W=Cv*((T3-T2)-(T4-T1));//Work done per cycle in kJ/kg
P=W*(a/60);//Maximum power developed by the engine in kW

//Output
printf('Maximum power developed by the engine is %3.3f kW',P)
