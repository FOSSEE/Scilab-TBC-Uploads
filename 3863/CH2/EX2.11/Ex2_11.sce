clear
//Given
//Variable declaration
A=8*8         //Area of section in sq.mm
P=7000        //Axial pull in N
Ldo=8         //Original Lateral dimension in mm
Ldc=7.9985    //Changed Lateral dimension in mm
C=0.8e5       //modulus of rigidity in N/sq.mm

//Calculation
lat_strain=(Ldo-Ldc)/Ldo                                        //Lateral strain
sigma=P/A                                                       //Axial stress in N/sq.mm
mu=(1/((sigma/lat_strain)/(2*C)-1))                      //Poisson's ratio

E=((sigma/lat_strain)/((sigma/lat_strain)/(2*C)-1))     //Modulus of elasticity in N/sq.mm


//Result
printf("\n Modulus of elasticity = %.4e N/mm^2",E)

