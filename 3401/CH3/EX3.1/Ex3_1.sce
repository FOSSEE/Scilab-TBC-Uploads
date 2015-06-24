clc

v1=10^5 //m per sec
deltav=0.01 //m per sec
m=9.11*10^-31// kg*m/s
e=1.6*10**-9 //Coulombs

//deltaE=0.5*m*(v2**2-v1**2)
//deltav=v2-v1.............deltav<<v1

deltaE=m*v1*deltav
disp(deltaE,"in J is")
deltaE=deltaE/e
disp(deltaE,"in eV is")
