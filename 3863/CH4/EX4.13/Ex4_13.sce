clear
//
//Given
//Variable declaration
d=12        //Diameter of bar in mm
delL=3      //Increase in length in mm
W=8000      //Steady load in N
P=800       //Falling weight in N
h=8*10      //Vertical distance in mm
E=2e5       //Youngs modulus in N/sq.mm

//Calculation
A=((%pi/4)*d**2)           //Area of bar in sq.mm

L=(E*A*delL/W)                 //Length of the bar in mm

sigma=((P/A)*(1+(sqrt(1+((2*E*A*h)/(P*L))))))

sigma=(sigma)           //Stress produced by the falling weight in N/sq.mm

//Result
printf("\n Stress produced by the falling weight = %0.3f  N/mm^2",sigma)
