clear
//

//Given
//Variable declaration
P=10*10**3             //Falling weight in N
h=30                   //Falling height in mm
L=4*10**3              //Length of bar in mm
A=1000                 //Area of bar in sq.m
E=2.1e5                //Youngs modulus in N/sq.mm

//Calculation
sigma=((P/A)*(1+(sqrt(1+((2*E*A*h)/(P*L))))))
delL=(sigma*L/E)


//Result
printf("\n Instantaneous elongation due to falling weight = %0.3f  mm",delL)
