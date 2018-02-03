clear
//

//Given
//Variable declaration
L=2*10**3            //Length in mm
d=50                 //Diameter in mm
P=100*10**3          //Suddenly applied load in N
E=200e3              //Youngs Modulus in N/sq.mm

//Calculation
A=(%pi/4)*d**2        //Area in sq.mm
sigma=(2*P/A)      //Instantaneous stress induced in N/sq.mm

dL=(sigma*L)/E            //Elongation in mm

//Result
printf("\n Instantaneous stress induced = %0.3f  N/mm^2",sigma)
printf("\n Instantaneous elongation = %0.3f  mm",dL)
