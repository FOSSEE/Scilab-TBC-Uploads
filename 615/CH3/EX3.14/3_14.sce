//chemical kinetics and catalysis//
//example 3.14//
t=15;//the half time of given first order reaction in min//
k=0.693/t;//formula of rate constant//
printf("The rate constant value of the given first order reaction is %f/min is",k);
a=100;//percentage of initial concentration//
x=80;//percentage of completed reaction//
a1=a-x;//percentage of left out concentration//
t1=(2.303/k)*(log10(a/a1));//formula to find time taken//
t2=t1*60;
printf("\nThe time taken to complete 80 percentage of the reaction is %fmin or %fsec",t1,t2);