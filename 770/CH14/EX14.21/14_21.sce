clear;
clc;

//Example - 14.21
//Page number - 490
printf("Example - 14.21 and Page number - 490\n\n");

//given
T = 293.15;//[K] - Temperature
R=8.314;//[J/mol*K] - Universal gas constant
A = 1280;//[J/mol]

//(dA/dT)_P,x = del_A (say)
dA_dT = -7.0;//[J/mol-K]

//For equilomar mixture,
x_1 = 0.5;// Mole fraction of component 1
x_2 = 0.5;// Mole fraction of component 2

//log(Y1) =  (A/(R*T))*x_2^(2)
//log(Y2) =  (A/(R*T))*x_1^(2)
Y1 = exp((A/(R*T))*x_2^(2));
Y2 = exp((A/(R*T))*x_1^(2));

//G_excess/(R*T*) = x_1*log(Y1) + x_2*log(Y2) = (A/(R*T))*x_1*x_2
G_excess = A*x_1*x_2;//[J/mol] - Excess Gibbs free energy

//H_excess/(R*T^(2)) = -[d/dT(G_excess/(R*T))]_P,x
//H_excess/(R*T^(2)) = -((x_1*x_2)/R)*[d/dT(A/T)]_P,x
//On simplification  and putting the values we get
H_excess = A*x_1*x_2 - T*dA_dT*x_1*x_2;//[J/mol] - Excess enthalpy

//Now excess entropy is given by
S_excess = (H_excess - G_excess)/T;//[J/mol-K] - Excess entropy

printf("For equimolar mixture\n\n");
printf("Excess Gibbs free energy (G_excess) is %f J/mol\n\n",G_excess);
printf("Excess enthalpy (H_excess) is %f J/mol\n\n",H_excess);
printf("Excess entropy (S_excess) is %f J/mol\n\n",S_excess);
printf("The value of activity coefficient Y1 is %f\n\n",Y1);
printf("The value of activity coefficient Y2 is %f\n\n",Y2);


