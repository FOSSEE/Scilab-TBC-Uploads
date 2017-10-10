
clear//

//Variable Declaration
//Axial Forces in lb in member AB, BC and CD
P_AB=2000 
P_BC=2000
P_CD=4000
//Other Variables
E=29*10**6 //Modulus of Elasticity in psi
//Length of each member in inches
L_AB=5*12
L_BC=4*12
L_CD=4*12
//Diameter of each member in inches
D_AB=0.5
D_BC=0.75
D_CD=0.75

//Calculation
//Area Calculation of each member in square inches
A_AB=(%pi*D_AB**2)/4
A_BC=(%pi*D_BC**2)/4
A_CD=(%pi*D_CD**2)/4

//Using relation delta=(PL/AE) to compute strain
//As stress in Member CD is compression
delta=(E**-1)*((P_AB*L_AB*A_AB**-1)+(P_BC*L_BC*A_BC**-1)-(P_CD*L_CD*A_CD**-1))

//Result
printf("\n The elongation in the total structure is %0.5f in",delta)
