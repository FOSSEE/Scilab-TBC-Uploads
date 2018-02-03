clear
//
//Given
//Variable declaration
d=12.5           //Diameter of the rod in mm
delL=3.2         //Increase in length in mm
W=10*1000        //Steady load in N
P=700            //Falling load in N
h=75             //Falling height in mm
E=2.1e5          //Youngs modulus in N/sq.mm

//Calculation
A=((%pi/4)*d**2)                                 //Area of rod in sq.mm

L=(E*A*delL/W)                                       //Length of the rod in mm

sigma=((P/A)*(1+(sqrt(1+((2*E*A*h)/(P*L))))))   //Stress produced by the falling weight in N/mm^2


//Result
printf("\n NOTE:The given answer for stress is wrong.The correct answer is,")
printf("\n Stress = %.2f N/mm^2",sigma)

