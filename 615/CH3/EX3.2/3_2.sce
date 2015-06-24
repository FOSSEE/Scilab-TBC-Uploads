//chemical kinetics and catalysis//
//example 3.2//
T1=10;//in min//
T2=20;//in min//
a=25;//amount of KMnO4 in ml at t=0min//
a1=20;//amount of KMnO4 in ml at t=10min or a-x value at t=10//
a2=15.7;//a-x value at t=20min//
k1=(2.303/T1)*log10(a/a1);//formula of rate constant for first order reaction//
printf("At t=10min rate constant k=%f/min",k1);
k2=(2.303/T2)*log10(a/a2);//rate constant formula//
printf("\nAt t=20min rate constant k=%f/min",k2);
printf("\nIf we calculate the rate constant at other t values we will see that k values are almost constnat");