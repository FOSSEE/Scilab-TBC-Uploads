clear//

//Variables

d = 0.001                      //diameter (in meter)
ND = 10**20                    //Number of phosphorus ions (in per cubic-meter)
R = 1000                       //Resistance (in ohm)
un = 0.1                       //mobility (in meter-square per volt-second)
q = 1.6 * 10**-19              //charge on electron (in Coulomb)

//Calculation

n = ND                         //Number of free electron (in per cubic-meter)
sig = q*n*un                   //conductivity (in Siemen per meter)
A = %pi * d**2 / 4         //Area of cross section (in meter-square)
l = R * sig * A                //length (in meter) 

//Result

printf("\n Length of the silicon would be  %0.3f  mm.",l*1000)
