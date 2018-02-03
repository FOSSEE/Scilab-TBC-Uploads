clear
//

//variable declaration

E=(2*100000)               //Young's modulus,N/mm^2
Pr=(0.3)                   //poisson's ratio

G=E/(2*(1+Pr))           //Rigidity modulus

K=E/(3*(1-2*(Pr)))        //Bulk modulus

printf("\n G= %0.1f  N/mm^2",G)

printf("\n K= %0.2f N/mm^2 ", K)

P=60                           //Load,kN
A=%pi*(25**2)/4               //Area**mm^2

Stress=P*1000/A                     //N/mm^2
//Linear strain,ex

ex=Stress/E
 
//Lateralstrain,ey,ez

ey=-1*Pr*ex
ez=-1*Pr*ex

//volumetric strain,ev=ex+ey+ez

ev=ex+ey+ez

v=%pi*(25**2)*500/4
Changeinvolume=ev*v

printf("\n change in volume %0.2f  mm^3",Changeinvolume)
