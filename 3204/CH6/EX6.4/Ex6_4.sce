// Initilization of variables
W1=50 // N // weight of the first block
W2=50 // N // weight of the second block
mu_1=0.3 // coefficient of friction between the inclined plane and W1
mu_2=0.2 // coefficient of friction between the inclined plane and W2
// Calculations
// On adding eq'ns 1&3 and substuting the values of N1 & N2 from eqn's 2&4 in this and on solving for alpha we get,
alpha=atand(((mu_1*W1)+(mu_2*W2))/(W1+W2)) // degrees
// Results
clc
printf('The inclination of the plane is %f degree \n',alpha)
