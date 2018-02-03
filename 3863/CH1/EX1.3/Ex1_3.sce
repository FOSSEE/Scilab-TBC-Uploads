clear
//

//Given
//Variable declaration
D=25        //Diameter of brass rod in mm
P=50*10**3  //Tensile load in N
L=250       //Length of rod in mm
dL=0.3      //Extension of rod in mm

//Calculation
A=(%pi/4)*(D**2)    //Area of rod in sq.mm
sigma=(P/A)      //Stress in N/sq.mm

e=dL/L                  //Strain
E=(sigma/e)             //Youngs Modulus in N/sq.m

//Result
printf("\n Youngs Modulus of a rod,E = %0.3f  GN/m^2",E*(10**-3))
