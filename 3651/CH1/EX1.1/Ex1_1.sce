//Initialisation of variables
clc
//Variable declaration
a=7.68*10**-29;     
r0=2.5*10**-10;    //radius(m)

//Calculation
b=a*(r0**8)/9;
y=((-2*a*r0**8)+(90*b))/r0**11;    
E=y/r0;           //young's modulus(Pa)

//Result

printf('youngs modulus is %0.2f GPa',(E/10^9))

