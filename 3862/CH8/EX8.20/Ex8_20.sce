clear
//

//variable declaration

Es=(2*100000)              //Young's modulus of steel rod ,N/mm^2
Ec=(1.2*100000)            //Young's modulus of copper tube,N/mm^2

di=(25)                           //internal diameter,mm
de=(40)                           //external diameter,mm

As=%pi*(di**2)/4               //Area of steel rod**mm^2
Ac=%pi*((de**2)-(di**2))/4   //Area of copper tube**mm^2
P=120                           //load, KN
//From equation of equilibrium, Ps+Pc=P,where Ps is the load shared by steel rod and Pc is the load shared by the copper tube.
//From compatibility condition,deltaS=deltaC

Pc=(P*1000)/(1+((As*Es)/(Ac*Ec)))
Ps=Pc*((As*Es)/(Ac*Ec))

SIC=Pc/Ac            //stress in copper, N/mm^2
SIS=Ps/As            //stress in steel,N/mm^2

printf("\n stress in Copper= %0.2f  N/mm^2",SIC)
printf("\n stress in Steel= %0.2f  N/mm^2",SIS)
