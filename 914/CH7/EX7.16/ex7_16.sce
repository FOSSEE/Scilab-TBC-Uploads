clc;
warning("off");
printf("\n\n example7.16 - pg312");
// given
T=536.67;  //[degR]; - temperature
R=10.73;  //[(lbf/in^2*ft^3)*lb*mol^-1*degR] - gas constant
p=14.696;  //[lbf/in^2];
g=9.807*3.2808;  //[ft/sec^2] - acceleration due to gravity
M=29;  // molecular weight of gas
pa=(p*M)/(R*T);
sg=13.45;  // specific gravity
pm=sg*62.4;
deltaz=15/(2.54*12);  //[ft]
gc=32.174;
// using the equation p2-p1=deltap=(pm-pa)*g*deltaz
deltap=(pm-pa)*(g/gc)*deltaz;
printf("\n\n the pressure drop is %flbf/ft^2",deltap);
