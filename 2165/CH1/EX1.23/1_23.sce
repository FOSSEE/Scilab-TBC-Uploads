
clc
//initialisation of variables
p=1//lb
T=200//Degree C
p1=15//lb/in^2
v1=4//ft^3
gama=1.41//lb
Cv=0.169//lb
J=1400//lb
n=1.2
T=473//F
v2=16.1//ft^3
T1=473//F
//CALCULATIONS
T2=(p1*v2)/(p*v1)*T1//Degree C
R=Cv*J*(gama-p)//lb/in^2
Fhi=0.1772*log(1.317)//rank
//RESULTS
printf('the change of entropy from intial conditions=% f rank',Fhi)
