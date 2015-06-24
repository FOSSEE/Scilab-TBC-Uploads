//chemical kinetics and catalysis//
//example 3.8//
t1=5;
t2=15;
t3=25;
t4=45;
a=37;//volume of KMnO4 in cm^3 at t=0 or value of a//
a1=29.8;//volume of KMnO4 in cm^3 or a-x value at t=5min//
a2=19.6;//volume of KMnO4 in cm^3 or a-x value at t=15min//
a3=12.3;//volume of KMnO4 in cm^3 or a-x value at t=25min//
a4=5;//volume of KMnO4 in cm^3 or a-x value at t=45min//
k1=(2.303/t1)*log10(a/a1);
printf("\nRate constant value at t=5min is %f/min",k1);
k2=(2.303/t2)*log10(a/a2);
printf("\nRate constant value at t=15min is %f/min",k2);
k3=(2.303/t3)*log10(a/a3);
printf("\nRate constant value at t=25min is %f/min",k3);
k4=(2.303/t4)*log10(a/a4);
printf("\nRate constant value at t=45min is %f/min",k4);
printf("\nAs the different values of k are nearly same,the reaction is of first oredr.");
k=(k1+k2+k3+k4)/4;
printf("\nThe average value of k is %f/min",k);