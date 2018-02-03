clear
//Given
//Variable declaration
E=1.2e5                  //Youngs modulus in N/sq.mm
C=4.8e4                  //Modulus of rigidity in N/sq.mm

//Calculation
mu=(E/(2*C))-1           //Poisson's ratio
K=int(E/(3*(1-2*mu)))    //Bulk modulus in N/sq.mm

//Result
printf("\n Bulk modulus = %.0e N/mm^2",K)

