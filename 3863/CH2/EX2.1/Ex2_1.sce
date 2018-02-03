clear
//
//

//Given
//Variable declaration
L=4*(10**3)       //Length of the bar in mm
b=30              //Breadth of the bar in mm
t=20              //Thickness of the bar in mm
P=30*(10**3)      //Axial pull in N
E=2e5             //Youngs modulus in N/sq.mm
mu=0.3            //Poisson's ratio

//Calculation
A=b*t                        //Area of cross-section in sq.mm
long_strain=P/(A*E)          //Longitudinal strain
delL=long_strain*L           //Change in length in mm
lat_strain=mu*long_strain    //Lateral strain
delb=b*lat_strain            //Change in breadth in mm
delt=t*lat_strain            //Change in thickness in mm

//Result
printf("\n change in length = %0.3f  mm",delL)
printf("\n change in breadth = %0.3f  mm",delb)
printf("\n change in thickness = %0.3f  mm",delt)
