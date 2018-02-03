clear
//Given
//Variable declaration
L=30                //Length in cm
b=4                 //Breadth in cm
d=4                 //Depth in cm
P=400*(10**3)       //Axial compressive load in N
delL=0.075          //Decrease in length in cm
delb=0.003          //Increase in breadth in cm

//Calculation
A=(b*d)*1e2                      //Area of cross-section in sq.mm
long_strain=delL/L               //Longitudinal strain
lat_strain=delb/b                //Lateral strain
mu=lat_strain/long_strain        //Poisson's ratio
E=int((P)/(A*long_strain))       //Youngs modulus

//Result
printf("\n Youngs modulus = %.e N/mm^2",E)

