//example-21.7
//page no=634
//given
//flux density
Bm=1.10  //Wb/m^2
//frequency
f=50  //Hz
//thickness of sheet
t=0.5*10^-3  //m
//resistivity
rho=30*10^-8  //per ohm m
//density
rhodash=7800  //kg/m^3
//mass
m=1  //kg
//volume of material
V=m/rhodash  //m^3
//and 
k=1.11
//hysteresis loss in each cycle
Wh=380  //W s/m^3
//loss per kg of specimen is given by
We=4/3*(Bm*f*t*k)^2*V/(rho)   //watt/kg
printf ("the loss is %f watt/kg",We)
