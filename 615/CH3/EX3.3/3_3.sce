//chemical kinetics and catalysis//
//example 3.3//
T=40.5;//in min//
R1=25;//percentage of decomposed reactant//
R2=100-R1;//percentage of left out reactant which is a-x value//
R3=100/R2;//value of a/(a-x)//
K=(2.303/T)*log10(R3);//formula of rate constant for first order reaction//
printf("The rate constant of the reaction is %f/min",K);
