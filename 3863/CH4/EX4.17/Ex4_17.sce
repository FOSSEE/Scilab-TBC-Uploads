clear
//

//Given
//Variable declaration
L=4*10**3     //Length of bar in mm
A=2000        //Area of bar in sq.mm
P1=3000       //Falling weight in N(for 1st case)
h1=20*10      //Height in mm(for 1st case)
P2=30*1000    //Falling weight in N(for 2nd case)
h2=2*10       //Height in mm(for 2nd case)
E=2e5         //Youngs modulus in N/sq.mm

//Calculation
V=A*L             //Volume of bar in mm^3

//case(i):Maximum stress when a 3000N weight falls through a height of 20cm
sigma1=(((sqrt((2*E*P1*h1)/(A*L)))))


//case(ii):Maximum stress when a 30kN weight falls through a height of 2cm
sigma2=((P2/A)*(1+(sqrt(1+((2*E*A*h2)/(P2*L))))))


//Result
printf("\n Maximum stress induced(when a weight of 3000N falls through a height of 20cm)= %0.3f  N/mm^2",sigma1)
printf("\n Maximum stress induced(when a weight of 30kN falls through a height of 2cm)= %0.3f  N/mm^2",sigma2)
