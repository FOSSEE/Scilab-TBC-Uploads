clc;
warning("off");
printf("\n\n example 7.15 - pg311");
// given
T=273.15+25;  //[K] - temperature
R=8.314;  //[kPa*m^3/kmol*K] - gas constant
p=101.325;  //[kPa] - pressure
M=29;  // molecular weight of gas
pa=(p*M)/(R*T);
sg=13.45;  // specific gravity
pm=sg*1000;
g=9.807;  //[m/sec^2] - acceleration due to gravity
deltaz=15/100;  //[m]
// using the equation p2-p1=deltap=(pm-pa)*g*deltaz
deltap=-(pm-pa)*g*deltaz;
printf("\n\n the pressure drop is %eN/m^2",deltap);
printf("\n the minus sign means the upstream pressure p1 is greater than p2, i.e ther is a pressure drop.");



