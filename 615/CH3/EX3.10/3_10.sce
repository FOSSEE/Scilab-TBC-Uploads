//chemical kinetics and catalysis//
//example 3.10//
t1=40;
t2=80;
t3=120;
t4=160;
t5=240;
vi=0;//volume of oxygen collected at constant pressure in ml at t=0//
v1=15.6;//volume of oxygen collected at constant pressure in ml at t=40//
v2=27.6;//volume of oxygen collected at constant pressure in ml at t=80//
v3=37.7;//volume of oxygen collected at constant pressure in ml at t=120//
v4=45.8;//volume of oxygen collected at constant pressure in ml at t=160//
v5=58.3;//volume of oxygen collected at constant pressure in ml at t=200//
vf=84.6;//volume of oxygen collected at constant pressure in ml at t=infinity//
a=vf-vi;//the initial concentration of N2O5 in solution i.e a//
a1=vf-v1;//a-x value at t=40min//
a2=vf-v2;//a-x value at t=80min//
a3=vf-v3;//a-x value at t=120min//
a4=vf-v4;//a-x value at t=160min//
a5=vf-v5;//a-x value at t=200min//
k1=(1/t1)*log(a/a1);
printf("Rate constant value at t=40min is %f/min",k1);
k2=(1/t2)*log(a/a2);
printf("\nRate constant value at t=80min is %f/min",k2);
k3=(1/t3)*log(a/a3);
printf("\nRate constant value at t=120min is %f/min",k3);
k4=(1/t4)*log(a/a4);
printf("\nRate constant value at t=160min is %f/min",k4);
k5=(1/t5)*log(a/a5);
printf("\nRate constant value at t=200min is %f/min",k5);
printf("\nAs k value is fairly constant the reaction is first oredr");