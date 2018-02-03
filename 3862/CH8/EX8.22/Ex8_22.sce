clear
//variable declaration

Es=(2*100000)              //Young's modulus of steel  ,N/mm^2
Ea=(1*100000)            //Young's modulus of aluminium,N/mm^2
Ls=240                        //length of steel,mm
La=160                        //length of aluminium,mm
Aa=1200               //Area of aluminium,mm^2
As=1000               //Area of steel,mm^2
P=250                           //load, KN
//From equation of equilibrium, Ps+2Pa=P,et force shared by each aluminium pillar be Pa and that shared by steel pillar be Ps. 
//From compatibility condition,deltaS=deltaC

Pa=(P*1000)/(2+((As*Es*La)/(Aa*Ea*Ls)))
Ps=Pa*((As*Es*La)/(Aa*Ea*Ls))

SIA=Pa/Aa            //stress in aluminium, N/mm^2
SIS=Ps/As            //stress in steel,N/mm^2

printf("\n stress in Aluminium= %0.2f  N/mm^2",SIA)
printf("\n stress in Steel= %0.2f  N/mm^2",SIS)
