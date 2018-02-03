clear
//

//Given
//Variable declaration
sigma1=120       //Major tensile stress in N/sq.mm
sigma2=-90       //Minor compressive stress in N/sq.mm
sigma_gp=150     //Greatest principal stress in N/sq.mm

//Calculation
 //case(a):Magnitude of the shearing stresses on the two planes
tau=(sqrt(((sigma_gp-((sigma1+sigma2)/2))**2)-(((sigma1-sigma2)/2)**2)))

 //case(b):Maximum shear stress at the point
sigmat_max=int((sqrt((sigma1-sigma2)**2+(4*tau**2)))/2)

//Result
printf("\n Shear stress on the two planes = %0.3f  N/mm^2",tau)
printf("\n Maximum shear stress at the point = %0.3f  N/mm^2",sigmat_max)
