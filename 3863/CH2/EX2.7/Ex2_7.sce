clear
//

//Given
//Variable declaration
L=5*10**3                //Length in mm
d=30                     //Diameter in mm
P=50*10**3               //Tensile load in N
E=2e5                    //Youngs modulus in N/sq.mm
mu=0.25                  //Poisson's ratio

//Calculation
V=int(((%pi*d**2*L)/4))        //Volume in mm^3

e=P*4/(%pi*(d**2)*E)                   //Strain of length
delL=(e*L)                          //Change in length in mm

lat_strain=(mu*(e))          //Lateral strain

deld=lat_strain*d                          //Change in diameter in mm
delV=(V*(0.0003536-(2*lat_strain))) //Change in volume in mm^3


//Result
printf("\n Change in length = %0.3f  mm",delL)
printf("\n Change in diameter = %0.3f  mm",deld)
printf("\n Change in volume = %0.3f  mm^3",delV)
