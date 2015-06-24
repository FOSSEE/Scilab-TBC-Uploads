clc();
clear;

// To study the effect of adding fins to the cylindrical barrel of an air cooled engine

l1= 3/12;                            // Length of fins in ft
l2 = 4/12;                          
h = 50;                             // Heat transfer coefficient in Btu/hr-ft-F
k = 28;                             // Thermal conductivity in Btu/hr-ft-F
T1 = 250;                           // Cylinder wall temperature in F
T2 = 70;                            // Air temperature in F
th = T1-T2;                         // Temperature difference
b = 0.09/12;                        // Thickness of fins in ft
m = 2*h/(b*k);                      // Characteristic parameter
// Seeing the value of length and m, yhe bessel functions can be found out

I2 = 188/7.26;                        // Magnitudes of bessel functions
I0 = 41.0/5.45;
I1 = 37.2/5.45;
K2 = 0.0;
K0 = 0.0022/5.45;
K1 = 0.0024/5.45;

q1 = 2*%pi*0.27*k*sqrt(m)*th*(I2*l2*m*K1*l1-K2*l2*m*I1*l1)/(144*(I2*l2*sqrt(m)*K0*l1*sqrt(m)+K2*l2*sqrt(m)*I0*l1*sqrt(m)));
// Heat loss by finned surface
q2 = 0.27/144*2*%pi*3*h*th;          // heat loss from barred surface

printf("the heat loss from the cylindrical barrel in presence of fins is %d Btu/hr \n ",q1);
printf("the heat loss from the bare cylindrical barrel is %d Btu/hr \n ",q2)


                    