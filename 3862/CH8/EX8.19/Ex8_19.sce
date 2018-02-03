clear
//variable declaration

L=(600)                   //compound bar of length,mm
P=(60)                    //compound bar when axial tensile force ,KN

Aa=(40*20)                //area of aluminium strip,mm^2
As=(60*15)                //area of steel strip,mm^2

Ea=1*100000             // elastic modulus of aluminium,N/mm^2
Es=2*100000             // elastic modulus of steel,N/mm^2

//load shared by aluminium strip be Pa and that shared by steel be Ps. Then from equilibrium condition Pa+Ps=P
//From compatibility condition, deltaAL=deltaS
Pa=(P*1000)/(1+((As*Es)/(Aa*Ea)))
Ps=Pa*((As*Es)/(Aa*Ea))

Sias=Pa/Aa
printf("\n Stress in aluminium strip= %0.2f  N/mm^2",Sias)
Siss=Ps/As
printf("\n Stress in steel strip= %0.2f  N/mm^2",Siss)

L=600
//Extension of the compound bar 
deltal=(Pa*L)/(Aa*Ea)
printf("\n Extension of the compound bar= %0.3f  mm",deltal)
