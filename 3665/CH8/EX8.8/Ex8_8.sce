clc//
//
//

//Variable declaration
e=1.6*10^-19;  
mew_e=0.36;     //electron mobility(m^2/Vs)
mew_h=0.17;     //hole mobility(m^2/Vs)
rho=2.12;       //resistivity(ohm m)
T=300;      //temperature(K)
k=1.38*10^-23;   //boltzmann constant
m=9.109*10^-31;    //mass(kg)
h=6.626*10^-34;    //plancks constant

//Calculation
sigma=1/rho;
ni=sigma/(e*(mew_e+mew_h));
C=2*((2*%pi*m*k/h^2)^(3/2));
y=C*T^(3/2)/ni;
z=log(y);
Eg=2*k*T*z/(1.6*10^-19);        //forbidden energy gap(eV)

//Result
printf("\n forbidden energy gap is %0.3f eV",Eg)
printf("\n answer varies due to rounding off errors")
