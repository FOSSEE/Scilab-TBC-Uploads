//To calculate the ratio between electronic and ionic polarizability
epsilon_r = 4.94;
n_2 = 2.69;     //square of index of refraction
alpha_i = 0;    //at optical frequencies
//(epsilon_r-1)/(epsilon_r+2) = N*(alpha_e+alpha_i)/(3*epsilon0)
X = (epsilon_r-1)/(epsilon_r+2);
//epsilon_r = n^2. therefore (n^2-1)/(n^2+2) = N*alpha_e/(3*epsilon0)
Y = (n_2-1)/(n_2+2);
//N*(alpha_e+alpha_i)/N*alpha_e = X/Y
//let alpha = alpha_i/alpha_e
alphai_e = (X/Y)-1;     //ratio between electronic ionic and electronic polarizability
printf("ratio between electronic ionic and electronic polarizability is %5.4f",alphai_e);
alphae_i = 1/alphai_e;      //ratio between electronic and ionic polarizability
printf("ratio between electronic and ionic polarizability is %5.3f",alphae_i);
