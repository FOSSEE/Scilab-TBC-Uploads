//chemical kinetics and catalysis//
//example 3.4//
pi=0;//pressure of N2 at t=0//
t1=2;
t2=8;
t3=16;
t4=24;
t5=50;
pf=34;//pressure of N2 at infinity//
p1=1.6;//pressure of N2 at t=2min//
p2=6.2;//pressure of N2 at t=8min//
p3=11.2;//pressure Of N2 at t=16min//
p4=15.5;//pressure of N2 at t=24min//
p5=24.4;//pressure of N2 at t=50min//
a=pf-pi;//value of a//
a1=pf-p1;//a-x value at t=2min//
a2=pf-p2;//a-x value at t=8min//
a3=pf-p3;//a-x value at t=16min//
a4=pf-p4;//a-x value at t=24min//
a5=pf-p5;//a-x value at t=50min//
k1=(1/t1)*log(a/a1);//rate constant at t=2min//
printf("Rate constant at t=2min is %f/min",k1);
k2=(1/t2)*log(a/a2);//rate constant at t=8min//
printf("\nRate constant at t=8min is %f/min",k2);
k3=(1/t3)*log(a/a3);//rate constant at t=16min//
printf("\nRate constant at t=16min is %f/min",k3);
k4=(1/t4)*log(a/a4);//rate constant at t=24min//
printf("\nRate constant at t=24min is %f/min",k4);
k5=(1/t5)*log(a/a5);//rate constant at t=50min//
printf("\nRate constant at t=50min is %f/min",k5);
k=(k1+k2+k3+k4+k5)/5;
printf("\nAverage rate constant is %f/min",k);