clc;
clear;
//Example 3.37
k=0.03  //W/(m.K)
Npr=0.697   //Prandtl number
v=2.076*10^-6   //m^2/s
Beta=0.002915   //K^-1
D=25 ;    //[Diameter in cm]
D=D/100 //[m]
Tf=343  //Film temperature in [K]
A=%pi*(D/2)^2   //Area in [m^2]
P=%pi*D //Perimeter [m]
T1=293  //[K]
T2=393  //[K]
g=9.81  //[m/s^2]

//Case (i) HOT SURFACE FACING UPWARD
L=A/P   //Characteristic length in [m]
Beta=1/Tf;  //[K^-1]
dT=T2-T1    //[K]
Ngr=(g*Beta*dT*(L^3))/(v^2) //Grashoff number
Nra=Ngr*Npr 
Nnu=0.15*(Nra^(1.0/3.0))    //Nusselt number
h=Nnu*k/L   //[W/m^2.K]
Q=h*A*dT    //[W]
printf("\nHeat transferred when disc is horizontal with hot surface facing upward is %f W\n",Q);

//Case-(ii) HOT FACE FACING DOWNWARD
Nnu=0.27*(Nra^(1/4))    //Nusselt number
h=Nnu*k/L   //W/(m^2.K)
Q=h*A*dT    //[W]
printf("\nHeat transferred when disc is horizontal with hot surface facing downward is %f W\n",Q);


//Case-(iii)-For disc vertical 
L=0.25  //Characteristic length[m]  
D=L //dia[m]
A=%pi*((D/2)^2) //[sq m]
Ngr=(g*Beta*dT*(L^3))/(v^2)     //Grashoff number
Npr=0.697
Nra=Ngr*Npr 
Nnu=0.10*(Nra^(1/3))    //Nusselt number
h=Nnu*k/D   //[W/(m^2.K)]
Q=h*A*dT    //[W]
printf("For vertical disc,heat transferred is %f W",Q);
