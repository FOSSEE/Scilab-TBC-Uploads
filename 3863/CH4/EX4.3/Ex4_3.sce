clear
//Given
//Variable declaration
A=10*10**2         //Area of bar in sq.mm
L=3*10**3          //Length of bar in mm
x=1.5              //Extension due to suddenly applied load in mm
E=2e5              //Youngs Modulus in N/sq.mm

//Calculation
sigma=int(x*E/L)            //Instantaneous stress due to sudden load in N/sq.mm
P=int((sigma*A)/2*1e-3)     //Suddenly applied load in kN

//Result
printf("\n Instantaneous stress produced by a sudden load = %0.3f  N/mm^2",sigma)
printf("\n Suddenly applied load = %0.3f  kN",P)
