//Chapter 13
//Example 13_7
//Page 318

clear;clc;

l=250;
i=1.6;
r=0.0002;
v=250;

I=i*l;
R=2*r*l;
vd=0.5*I*R;
vfp=v+vd;
x=l/2;
v_d=i*r*2*(l*x-x^2/2);
v_fp=v_d+v;
printf("Current entering the distributor = %d A \n\n", I);
printf("Total Resistance of the distributor = %.4f ohm \n\n", R);
printf("(i) Voltage drop over the entire distibutor = %d V \n\n", vd);
printf("    Voltage at feeding point = %d V \n\n", vfp);
printf("(ii) Voltage drop upto distance %d m from feeding point = %d V \n\n", x, v_d);
printf("     Voltage at feeding point = %d V \n\n", v_fp);


