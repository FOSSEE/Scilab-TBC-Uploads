clear
//variable declaration

L=(1000)                     //length of the bar at normal temperature,mm
As=(50*10)                   //Area of steel,mm^2
Ac=(40*5)                    //Area of copper,mm^2
//Ac = Free expansion of copper  is greater than free expansion of steel  . To bring them to the same position, tensile force Ps acts on steel plate and compressive force Pc acts on each copper plate. 
alphas=(0.000012)                   //Expansion of coeffcient of steel,/°C
alphac=(0.000017 )                  //Expansion of coeffcient of copper,/°C
t=80                              //raise by temperature, °C
Es=2*100000                       //Young's modulus of steel,N/mm^2
Ec=1*100000                       //Young's modulus of copper,N/mm^2
Pc=((alphac-alphas)*t*L)/((2*L/(As*Es)) +(L/(Ac*Ec)))
Ps=2*Pc

pc=Pc/Ac                          //Stress in copper,N/mm^2
ps=Ps/As                          //Stress in steel, N/mm^2

Changeinlength=alphas*t*L+(Ps*L/(As*Es))


printf("\n Change in length= %0.2f  mm",Changeinlength)
