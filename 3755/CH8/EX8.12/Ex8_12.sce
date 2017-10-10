clear
//
//
//

//Variable declaration
rho=0.00912;       //resistivity(ohm m)
RH=3.55*10^-4;      //hall coefficient(m^3/C)
B=0.48;        //flux density(Wb/m^2)

//Calculation
sigma=1/rho;
theta_H=atan(sigma*B*RH);      //hall angle(radian)
theta_H=theta_H*180/%pi ;       //hall angle(degrees)

//Result
printf("\n hall angle is %0.4f degrees",theta_H)
