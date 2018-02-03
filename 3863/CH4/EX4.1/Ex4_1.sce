clear
//

//Given
//Variable declaration
P=60*10**3    //Load in N
d=4*10        //diameter in mm
L=5*10**3     //Length of rod in mm
E=2e5         //Youngs Modulus in N/sq.mm


//Calculation
A=(%pi/4)*d**2           //Area in sq.mm
V=int(A*L)                   //Volume of rod in cubic.mm
//case (ii):stress in the rod
sigma=(P/A)           //stress in N/sq.mm


//case (i):stretch in the rod
x=((sigma/E)*L)       //stretch or extension in mm


//case (iii):strain energy absorbed by the rod
U=((sigma**2/(2*E)*V))*1e-3     //strain energy absorbed by the rod in Nm



//Result
printf("\n stress in the rod = %0.3f  N/mm^2",sigma)
printf("\n stretch in the rod = %0.3f  mm",x)
printf("\n strain energy absorbed by the rod = %0.3f  N-m",U)
