clc
//initialisation of variables
v=10//ft^3
T=20//Degree C
p=15//lb in^2
p1=200//lb//in^2
gama=1.41 //lb
Cv=0.169//lb
v2=1.153//ft^3
j=1400//lb
T1=293//F
T2=451//F
T1=[(p1*v2)/(p*v)]*T1//Degree C
//CALCULATIONS
R=Cv*j*(gama-1)
W=0.816//lb
Fhi=Cv*[(gama-1.2)/(1.2-1)]*log(T1/T2)*W//rnak
//RESULTS
printf('The change of entropy=% f rank',Fhi)
