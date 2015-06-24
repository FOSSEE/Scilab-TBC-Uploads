//example-19.15
//page no-584
//given
//magnetic flux density
betaz=0.5  //T or Wb/m^2
//hall coefficient
HC=3.66*10^-4  //m^3/C
//resistivity of semiconductors 
rho=0.00893  //ohm m
//hall angle
thetaH={atan(HC*betaz/rho)}*180/(%pi)   //degrees
printf ("the hall angle is %f degrees",thetaH)
