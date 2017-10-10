clear
//
//
//

//Variable declaration
rho1=1.2*10**-8    //resistivity(ohm m)
rho2=0.12*10**-8    //resistivity(ohm m)
p1=0.4    //atomic percent
p2=0.5    //atomic percent
rho=1.5*10**-8    //resistivity(ohm m)

//Calculation
rho_i=(rho1*p1)+(rho2*p2)     //increase of resistivity(ohm m)
Tr=rho+rho_i       //total resistivity of copper alloy(ohm m)

//Result
printf("\n increase of resistivity is %0.2f  *10**-8 ohm m",rho_i*10**8)
