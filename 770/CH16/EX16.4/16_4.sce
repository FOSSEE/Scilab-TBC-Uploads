clear;
clc;

//Example - 16.4
//Page number - 571
printf("Example - 16.4 and Page number - 571\n\n");

//Given
T = 200;//[K]
R = 8.314;//[J/mol*K] - universal gas constant
// G_E = A*x_1*x_2
A = 4000;//[J/mol]
x_1 = 0.6;// Mle fraction of feed composition

// Since A is given to be independent of temperature
UCST = A/(2*R);//[K] - Upper critical solution temperature
printf(" The UCST of the system is %f K\n\n",UCST);

// Since the given temperature is less than UCST therefore two phase can get formed at the given temperature.

// x1_alpha = 1 - x1_beta
// We know that,  x1_alpha*Y_1_alpha = x2_alpha*Y_2_alpha
// x1_alpha*exp[(A/(R*T))*(x2_alpha)^(2)] = (1 - x1_alpha)*exp[(A/(R*T))*(x1_alpha)^(2)]
// where use has beeen made of the fact that x1_alpha = 1 - x1_beta and x2_beta = 1 - x1_beta = x1_alpha .Taking logarithm of both side we get
// log(x1_alpha) + (A/(R*T))*(1 - x1_alpha)^(2) = log(1 - x1_alpha) + (A/(R*T))*x1_alpha^(2)
// log(x1_alpha/(1-x1_alpha)) = (A/(R*T))*(2*x1_alpha - 1)

deff('[y]=f(x1_alpha)','y= log(x1_alpha/(1-x1_alpha)) - (A/(R*T))*(2*x1_alpha - 1)');
x1_alpha = fsolve(0.1,f);
x1_beta = fsolve(0.9,f);
// Because of symmetry 1 - x1_beta = x1_alpha

// It can be seen that the equation,  log(x1/(1-x1)) = (A/(R*T))*(2*x1 - 1) has two roots.
// The two roots acn be determined by taking different values 
// Starting with x1 = 0.1, we get x1 = 0.169 as the solution and starting with x1 = 0.9,we get x1 = 0.831 as the solution.
// Thus x1 = 0.169 is the composition of phase alpha and x1 = 0.831 is of phase beta
printf(" The composition of two liquid phases in equilibrium is given by, x1_alpha = %f and x1_beta = %f\n\n",x1_alpha,x1_beta);

// From the equilibrium data it is seen that if the feed has composition x1 less than 0.169 or more than 0.831 the liquid mixture is of single phase
// whereas if the overall (feed) composition is between 0.169 and 0.831 two phases shall be formed.
// The amounts of phases can also be calculated. The feed composition is given to be z1 = 0.6
z1 = 0.6;
// z1 = x1_alpha*alpha + x1_beta*beta
// beta = 1 - alpha
alpha = (z1-x1_beta)/(x1_alpha-x1_beta);//[mol]
Beta = 1 - alpha;//[mol]
printf(" The relative amount of phases is given by, alpha = %f mol and beta = %f mol\n\n\n",alpha,Beta);

// the relative amounts of the phases changes with the  feed composition 

//log(x1/(1-x1)) = (A/(R*T))*(2*x1 - 1)
// If the above equation has two real roots of x1 (one for phase alpha and the other for phase beta) then two liquid phases get formed
// and if it has no  real roots then a homogeneous liquid mixtures is obtained.

printf(" log(x1/(1-x1)) = (A/(R*T))*(2*x1 - 1)\n");
printf(" If the above equation has two real roots of x1 (one for phase alpha and the other for phase beta) then two liquid phases get formed\n");
printf(" and if it has no  real roots then a homogeneous liquid mixture is obtained\n");






