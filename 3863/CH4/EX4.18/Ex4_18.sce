clear
//
//

//Given
//Variable declaration
A=6.25*100     //Area in sq.mm
W=10*10**3     //Load in N
V=(40/60)      //Velocity in m/s
L=10000        //Length of chain unwound in mm
E=2.1e5        //Youngs modulus in N/sq.mm
g=9.81         //acceleration due to gravity

//Calculation
K_E=(((W/g)*(V**2))/2)*1e3          //K.E of the crane in N mm

sigma=(sqrt(K_E*E*2/(A*L)))    //Stress induced in the chain in N/sq.mm


//Result
printf("\n Stress induced in the chain due to sudden stoppage = %0.3f  N/mm^2",sigma)
