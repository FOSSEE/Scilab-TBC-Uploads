clc
//initialisation of variables
T=200//Degree C
p=150//lb/in^2
v=12//ft^3
R=96//Lb
T1=473//F
T2=273//F
j=1400//lb
Cv=0.169//lb/in^2
v1=(R*T1)/(p*144)//ft^3
//CALCULATIONS
Fhi=(R/j)*log(v/v1)+Cv*log(T2/T1)//rank
//RESULTS
printf('The change of entropy=% f rank',Fhi)
