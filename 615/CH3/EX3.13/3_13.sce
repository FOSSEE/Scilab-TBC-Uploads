//chemical kinetics and catalysis//
t1=75;//time in min//
t2=119;
t3=183;
vi=9.62;//volume of alkali used in ml at t=0min//
v1=12.10;//volume of alkali used in ml at t=75min//
v2=13.10;//volume of alkali used in ml at t=119min//
v3=14.75;//volume of alkali used in ml at t=183min//
vf=21.05;//volume of alkali used in ml at t=infinity//
k1=(1/t1)*log((vf-vi)/(vf-v1));//formula of rate constant for first order reactions//
printf("\nRate constant value at t=75min is %f/min",k1);
k2=(1/t2)*log((vf-vi)/(vf-v2));
printf("\nRate constant value at t=119min is %f/min",k2);
k3=(1/t3)*log((vf-vi)/(vf-v3));
printf("\nRate constant value at t=183min is %f/min",k3);
printf("\nAn almost constant value of k shows that the hydrolysis of ethyl acetateis a first order reaction");

