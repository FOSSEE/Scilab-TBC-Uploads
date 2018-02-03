clear
//
//

//Given
//Variable declaration
P=9*1000                   //Axial pull in N
F=4.5*1000                 //Shear force in N
sigmat_star=225            //Elastic limit in tension in N/sq.mm
Sf=3                       //Factor of safety
mu=0.3                     //Poisson's ratio
sigma3=0                   //third principle stress

//Calculation
sigmat=sigmat_star/Sf
sigma=(P/(%pi/4))
tau=(F/(%pi/4))
sigma1=((tau)+int((sqrt((sigma/2)**2+tau**2))))

sigma2=((tau)-int((sqrt((sigma/2)**2+tau**2))))

d=(((((sigma1-sigma2)**2+(sigma2-sigma3)**2+(sigma3-sigma1)**2)/(2*(sigmat**2)))**(1/4)))


//Result
printf("\n Diameter of the bolt = %0.3f  mm",d)
