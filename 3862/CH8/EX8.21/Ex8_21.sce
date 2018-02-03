clear
//

//variable declaration
//Es/Ec=18(given)
Er=(18)                //young modulus ratio Er=Es/Ec
d=(16)                           //steel bar diameter,mm
//8 steel bars
As=8*%pi*(d**2)/4               //Area of steel bar**mm^2
Ac=(300*500)-As                      //Area of concrete,mm^2

P=800                           //Compressive force, KN
//From equation of equilibrium, Ps+Pc=P,where Ps is the load shared by steel bar and Pc is the load shared by the Concrete
//From compatibility condition,deltaS=deltaC

Pc=(P*1000)/(1+((As*Er)/(Ac)))
Ps=Pc*((As*Er)/(Ac))

SIC=Pc/Ac            //stress in Concrete, N/mm^2
SIS=Ps/As            //stress in steel,N/mm^2

printf("\n stress in Concrete= %0.2f  N/mm^2",SIC)
printf("\n stress in Steel= %0.2f  N/mm^2",SIS)
