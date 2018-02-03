clear
//
//

//Initilization of Variables

sigma1=30 //N/mm**2 //Stress in tension
d=20 //mm //Diameter 
sigma2=90 //N/mm**2 //Max compressive stress
sigma3=25 //N/mm**2

//Calculations

//In TEnsion

//Corresponding stress in shear
P=sigma1*2**-1 //N/mm**2

//Tensile force
F=%pi*4**-1*d**2*sigma1

//In Compression

//Correspong shear stress
P2=sigma2*2**-1 //N/mm**2

//Correspong compressive(axial) stress
p=2*sigma3 //N/mm**2 

//Corresponding Compressive force
P3=p*%pi*4**-1*d**2 //N

//Result
printf("\n Failure Loads are: %0.2f  N",F)
printf("\n                  : %0.2f  N",P3)
