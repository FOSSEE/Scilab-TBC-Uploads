clc;
warning("off");
printf("\n\n example14.8 - pg737");
// given
M=153.82;  //[kg/mole] - molecular weight of ccl4
T1=349.90;  //[K] - temperature1
T2=293.15;  //[K] - temperature 2
cp1=0.9205;  //[KJ/kg*K] - heat capacity at temperature T1
cp2=0.8368;  //[KJ/kg*K] - heat capacity at temperature T2
p1=1480;  //[kg/m^3] - density at temperature T1
p2=1590;  //[kg/m^3] - density at temperature T2
Tb=349.90;  //[K] - normal boiling point
pb=1480;  //[kg/m^3] - density at normal boiling point
cpb=0.9205;  //[KJ/kg*K] - heat capacity at normal boiling point
k1=(1.105/(M^(1/2)))*(cp1/cpb)*((p1/pb)^(4/3))*(Tb/T1);
printf("\n\n The estimated thermal conductivity at normal boiling point is \n k=%f W*m^-1*K^-1",k1);
k2=(1.105/(M^(1/2)))*(cp2/cpb)*((p2/pb)^(4/3))*(Tb/T2);
printf("\n\n The estimated thermal conductivity at temperature %f K is \n k=%f W*m^-1*K^-1",T2,k2);
printf("\n\n The estimated value is 3.4 percent higher than the experimental value of 0.1029 W*m^-1*K^-1");

