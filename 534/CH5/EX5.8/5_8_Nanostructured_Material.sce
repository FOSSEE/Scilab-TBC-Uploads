clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 5.8   Page 300 \n'); //Example 5.8
// Thermal Conductivity of Nanostructured material

//Operating Conditions

k = 1.11 ;        //[W/m.K] Thermal Conductivity 
rho = 3100;        //[kg/m^3] Density
c = 820 ;          //[J/kg.K] Specific Heat
//Dimensions of Strip
w = 100*10^-6;     //[m] Width
L = .0035 ;        //[m] Long
d = 3000*10^-10;   //[m] Thickness
delq = 3.5*10^-3;  //[W] heating Rate 
delT1 =1.37 ;     //[K] Temperature 1
f1 = 2*%pi ;      //[rad/s] Frequency 1
delT2 =.71 ;     //[K] Temperature 2
f2 = 200*%pi;       //[rad/s] Frequency 2

A = [delT1 -delq/(L*%pi);
     delT2 -delq/(L*%pi)] ;

C= [delq*-2.30*log10(f1/2)/(2*L*%pi);
    delq*-2.30*log10(f2/2)/(2*L*%pi)] ;

B = inv(A)*C;

alpha = k/(rho*c);
delp = [(alpha/f1)^.5 (alpha/f2)^.5];
printf("\n C2 = %.2f   k = %.2f W/m.K \n\n Thermal Penetration depths are %.2e m and %.2e m at frequency 2*pi rad/s and 200*pi rad/s" ,B(2),B(1), delp);

//END