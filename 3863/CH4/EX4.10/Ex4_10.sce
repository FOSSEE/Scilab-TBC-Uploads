clear
//
//Given
//Variable declaration
P=100           //Impact load in N
h=2*10          //Height in mm
L=1.5*1000      //Length of bar in mm
A=1.5*100       //Area of bar in sq.mm
E=2e5           //Modulus of elasticity in N/sq.mm

//Calculation
V=A*L           //Volume in mm^3
//case(i):Maximum instantaneous stress induced in the vertical bar
sigma=((P/A)*(1+(sqrt(1+((2*E*A*h)/(P*L))))))

//case(ii):Maximum instantaneous elongation
delL=(sigma*L/E)

//case(iii):Strain energy stored in the vertical rod
U=(sigma**2/(2*E)*V*1e-3)


//Result
printf("\n NOTE:The answer in the book for instantaneous stress is incorrect.The correct answer is,")
printf("\n Maximum instantaneous stress = %0.3f  N/mm^2",sigma)
printf("\n Maximum instantaneous elongation = %0.3f  mm",delL)
printf("\n Strain energy = %0.3f  N-m",U)
