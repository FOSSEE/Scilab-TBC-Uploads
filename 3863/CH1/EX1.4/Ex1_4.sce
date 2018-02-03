clear
//

//Given
//Variable Declaration
D=3          //Diameter of the steel bar in cm
L=20         //Gauge length of the bar in cm
P=250        //Load at elastic limit in kN
dL=0.21      //Extension at a load of 150kN in mm
Tot_ext=60   //Total extension in mm
Df=2.25      //Diameter of the rod at the failure in cm

//Calculation
A=((%pi/4)*(D**2))    //Area of the rod in sq.m


//case (i):Youngs modulus
e=((150*1000)/(7.0685))   //stress in N/sq.m

sigma=dL/(L*10)                  //strain
E=((e/sigma)*(10**-5))    //Youngs modulus in GN/sq.m


//case (ii):stress at elastic limit
stress=int(((P*1000)/A))*1e-2   //stress at elastic limit in MN/sq.m


//case (iii):percentage elongation
Pe=(Tot_ext*1e2)/(L*10)

//case (iv):percentage decrease in area
Pd=(D**2-Df**2)/D**2*1e2


//Result
printf("\n NOTE:The Youngs Modulus found in the book is incorrect.The correct answer is,")
printf("\n Youngs modulus,E = %0.3f  GN/m^2",E)
printf("\n Stress at the elastic limit,Stress = %0.3f  MN/m^2",stress)
printf("\n Percentage elongation = %d%%",Pe)

printf("\n Percentage decrease in area = %.2f%%",Pd)
