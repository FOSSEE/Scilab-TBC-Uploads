clear
//
//

//Initilization of Variables

K=5 //N/mm //Stiffness
L=100 //mm //Solid Length
q_s=60 //N/mm**2 //Max shear stress
W=200 //N //Max Load
G=80*10**3 //N/mm**2

//Calculations

//K=W*dell**-1
//After substituting values and further simplifying we get
//d=0.004*R**3*n   ........(1) //mm //Diameter of wire
//n=L*d**-1         ........(2)

//From Shearing stress
//q_s=16*W*R*(%pi*d**3)**-1 
//After substituting values and further simplifying we get
//d**4=0.004*R**3*n    .................(4)

//From Equation 1,2,3
//d**4=0.004*(0.0785*d**3)**3*100*d**-1
//after further simplifying we get
d=5168.101**0.25
n=100*d**-1
R=(d**4*(0.004*n)**-1)**0.3333

//Result
printf("\n Diameter of Wire is %0.2f  mm",d)
printf("\n No.of turns is %0.2f  ",n)
printf("\n Mean Radius of spring is %0.2f  mm",R)
