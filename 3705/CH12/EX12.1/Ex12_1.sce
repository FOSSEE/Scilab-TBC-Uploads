
clear//

//Variable Declaration
W=24*10**3 //Load in kips
E=29*10**6 //Youngs Modulus in psi
L=72 //length in inches
theta=30 //Angle in degrees

//Calculations
L_ab=L/sin(theta*%pi*180**-1) //Length of AB in inches
L_ac=L/sin((90-theta)*%pi*180**-1) //Length of AC in inches

//Applying the forces in x and y sum to zero
//Applying the follows energy formula
//Applying Castiglinos theorem 
delta_A=91.16*W*E**-1 //Displacement in inches

//Result
printf("\n The displacement of point A is %0.4f in",delta_A)
