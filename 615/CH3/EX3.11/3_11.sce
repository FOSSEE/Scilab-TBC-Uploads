//chemical kinetics and catalysis//
//example 3.11//
t1=120;//time in sec//
t2=240;
t3=530;
t4=600;
a=0.05;//initial concentration//
x1=32.95;//extent of reaction or x value at t=120sce//
x2=48.8;//extent of reaction or x value at t=240sce//
x3=69;//extent of reaction or x value at t=530sce//
x4=70.35;//extent of reaction or x value at t=600sce//
a1=100-x1;//extent of left out or a-x value at t=120sec//
a2=100-x2;//extent of left out or a-x value at t=240sec//
a3=100-x3;//extent of left out or a-x value at t=530sec//
a4=100-x4;//extent of left out or a-x value at t=600sec//
k1=(1/(a*t1))*(x1/a1);
printf("Rate constant value at t=120sec is %fdm^3/mol.sec",k1);
k2=(1/(a*t2))*(x2/a2);
printf("\nRate constant value at t=240sec is %fdm^3/mol.sec",k2);
k3=(1/(a*t3))*(x3/a3);
printf("\nRate constant value at t=530sec is %fdm^3/mol.sec",k3);
k4=(1/(a*t4))*(x4/a4);
printf("\nRate constant value at t=600sec is %fdm^3/mol.sec",k4);
k=(k1+k2+k3+k4)/4;
printf("\nAverage value of rate constant is %fdm^3/mol.sec",k);
