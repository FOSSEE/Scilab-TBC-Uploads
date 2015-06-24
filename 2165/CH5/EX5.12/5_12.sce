clc
//initialisation of variables
p1=15//lb/in^2
p2=60//lb/in^2
t=16//Degree C
Ta=273+t//Degree C absolute
T=1.486//lb/in^2
Td=Ta/T//Degree C absolute
//CALCULATIONS
P=Td/(Ta-Td)//Degree C absolute
//RESULTS
printf('The lowest temperature and coefficient of per formance=% f Degree C absolute',P)
