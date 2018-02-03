clear
//

//Given
//Variable declaration
W=60*10**3      //Weight in N
V=1             //Velocity in m/s
L=15*10**3      //Free length in mm
A=25*100        //Area in sq.mm
E=2e5           //Youngs modulus in N/sq.mm
g=9.81          //acceleration due to gravity

//Calculation
K_E=((W/g)*(V**2))/2*1e3                  //Kinetic Energy of the cage in N mm
sigma=(sqrt(K_E*E*2/(A*L)))   //Maximum stress in N/sq.mm


//Result
printf("\n Maximum stress produced in the rope = %0.3f  N/mm^2",sigma)
