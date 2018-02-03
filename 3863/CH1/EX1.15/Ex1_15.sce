clear
//

//Given
//Variable declaration
D1=40      //Larger diameter in mm
D2=20      //Smaller diameter in mm
L=400      //Length of rod in mm
P=5000     //Axial load in N
E=2.1e5    //Youngs modulus in N/sq.mm

//Calculation
dL=((4*P*L)/(%pi*E*D1*D2))   //extension of rod in mm

//Result
printf("\n Extension of the rod = %0.3f  mm",dL)
