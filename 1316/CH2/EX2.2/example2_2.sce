//Chapter 2
//Example 2.2
//Page 58

clear;
clc;

R1 = 10;
Vs = 5;
R_low = 4;
R_high = 12;


printf("a. The solution is given by VsR2/R1+R2.For R2=4k.ohm,we have\n")
//Calculation of Vd
x = (Vs*R_low)/(R1+R_low);
printf("VD = %.2f V\n",x)
printf("For R2=12k.ohm,we have\n")
//Calculation of Vd
y = (Vs*R_high)/(R1+R_high);
printf("VD = %.2f V\n",y)
printf("b. Thus the voltage varies from %.2f to %.2f V",x,y)
printf("c. The range of output impedance is found from the parallel \n combination of R1 and R2 for the minimum and maximum of R2.\n Simple parallel resistance computation shows that this will be from ")
//Calculation of parallel resistances
a = (R1*R_low)/(R1+R_low);
b = (R1*R_high)/(R1+R_high);
printf("%.2f to %.2f k.ohm",a,b)
printf("d. The power dissipated by the sensor can be determined most easily from V^2/R2,as the voltage across R2 has been calculated.The power dissipated varies from ")
c = (Vs^2)/R_high;
d = (Vs^2)/R_low;
printf("%.4f to %.4f W",c,d)





