clc//
//
//

//Variable declaration
T=300;      //temperature(K)
k=1.38*10^-23;   //boltzmann constant
m=9.109*10^-31;    //mass(kg)
h=6.626*10^-34;    //plancks constant
Eg=0.7;     //energy(eV)
e=1.6*10^-19;  

//Calculation
x=(2*%pi*m*k/h^2)^(3/2);
y=exp(-Eg*e/(2*k*T));
ni=2*x*(T^(3/2))*y;             //concentration of intrinsic charge carriers(per m^3)

//Result
printf("\n concentration of intrinsic charge carriers is %0.2f *10^18 per m^3",ni/10^18)
