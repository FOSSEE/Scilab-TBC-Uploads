clear
//

//Given
//Variable declaration
D1=30          //Larger diameter in mm
D2=15          //Smaller diameter in mm
L=350          //Length of rod in mm
P=5.5*10**3    //Axial load in N
dL=0.025       //Extension in mm

//Calculation
E=int((4*P*L)/(%pi*D1*D2*dL))   //Modulus of elasticity in N/sq.mm

//Result
printf("\n Modulus of elasticity,E = %.5eN/mm^2",E)
