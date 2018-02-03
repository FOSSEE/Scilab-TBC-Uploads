clear
//
//Given
//Variable declaration
delL=2.1          //Instantaneous extension in mm
L=3*10**3         //Length of bar in mm
A=5*100           //Area of bar in mm
h=4*10            //Height in mm
E=2e5             //Modulus of elasticity in N/sq.mm

//Calculation
V=A*L                           //Volume of bar in mm^3

//case(i):Instantaneous stress induced in the vertical bar
sigma=int(E*delL/L)

//case(ii):Unknown weight
P=(((sigma**2)/(2*E)*V)/(h+delL))


//Result
printf("\n Instantaneous stress = %0.3f  N/mm^2",sigma)
printf("\n Unknown weight = %0.3f  N",P)
