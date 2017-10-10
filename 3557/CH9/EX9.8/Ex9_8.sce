//Example 9.8//
//(a) 1153degre c is just below he eutectic temperature
x1=3.00;//wt % //x1 is the overall composition
xc=2.08;//wt % //composition of two phases
xC=100;//wt %//composition of two phases
a=1;//kg 
mc=((x1-xc)/(xC-xc))*a
mprintf("mc = %f kg ",mc)
b=10^3;//g //As 1kg = 10^3 grams
mc2=mc*b
mprintf("\nmc2= %f g",mc2)
//(b) At room temperature, we obtain
xa=0;
mc1=((x1-xa)/(xC-xa))*a
mprintf("\n mc1 = %f kg ",mc1)
mc3=mc1*b
mprintf("\nmc3= %i g",mc3)
