// Scilab code Ex18.3 : : Page-763 (2011)
clc; clear;
p = rand(1,2);             // proton
pi_minus = rand(1,2);      //pi minus meson
pi_plus = rand(1,2);       // pi plus meson
n = rand(1,2);             // neutron
lamda_0 = rand(1,2);       // lamda hyperon
K_0 = rand(1,2);           // K zero (Kaons)
K_plus = rand(1,2);        // K plus (Kaons)
sigma_plus = rand(1,2);    // hyperon 
sigma_minus = rand(1,2)    // hyperon
ksi_minus = rand(1,2);     // hyperon
// Allocate the value of Isospins (T and T3)
p(1,1) = 1/2;
p(1,2) = 1/2;
pi_minus(1,1) = 1;
pi_minus(1,2) = -1;
pi_plus(1,1) = 1;
pi_plus(1,2) = +1;
n(1,1) = 1/2;
n(1,2) = -1/2;
lambda_0(1,1) = 0;
lambda_0(1,2) = 0;
K_0(1,1) = pi_minus(1,1)+p(1,1);
K_0(1,2) = pi_minus(1,2)+p(1,2) ;
K_plus(1,1) = p(1,1)+p(1,1)-lambda_0(1,1)-p(1,1);
K_plus(1,2) = p(1,2)+p(1,2)-lambda_0(1,2)-p(1,2) ;
sigma_plus(1,1) = pi_plus(1,1)+p(1,1)-K_plus(1,1);
sigma_plus(1,2) =  pi_plus(1,2)+p(1,2)-K_plus(1,2);
sigma_minus(1,1) =  pi_minus(1,1)+p(1,1)-K_plus(1,1);
sigma_minus(1,2) =  pi_minus(1,2)+p(1,2)-K_plus(1,2);
ksi_minus(1,1) = pi_plus(1,1)+n(1,1)-K_plus(1,1)-K_plus(1,1);
ksi_minus(1,2) = pi_plus(1,2)+n(1,2)-K_plus(1,2)-K_plus(1,2);
printf("\n  Reaction I \n         pi_minus + p ......> lambda_0  + K_0");
printf("\n The value of T for K_0 is : %3.1f ",K_0(1,1));
printf("\n The value of T3 for K_0 is : %3.1f ",K_0(1,2));
printf("\n  Reaction II \n         pi_plus + p -> lambda_0  + K_plus");
printf("\n The value of T for K_plus is : %3.1f ",K_plus(1,1));
printf("\n The value of T3 for K_plus is : %3.1f ",K_plus(1,2));
printf("\n  Reaction III \n         pi_plus + n -> lambda_0 + K_plus");
printf("\n The value of T for K_plus is : %3.1f ",K_plus(1,1));
printf("\n The value of T3 for K_plus is : %3.1f ",K_plus(1,2));
printf("\n  Reaction VI \n         pi_minus + p -> sigma_minus  + K_plus");
printf("\n The value of T for sigma_minus is : %3.1f ",sigma_minus(1,1));
printf("\n The value of T3 for sigma_minus is : %3.1f ",sigma_minus(1,2));
printf("\n  Reaction V \n         pi_plus + p -> sigma_plus  + K_plus");
printf("\n The value of T for sigma_plus is : %3.1f ",sigma_plus(1,1));
printf("\n The value of T3 for sigma_plus is : %3.1f ",sigma_plus(1,2));
printf("\n  Reaction VI \n         pi_plus + n -> ksi_minus  + K_plus + K_plus");
printf("\n The value of T for Ksi_minus is : %3.1f ",ksi_minus(1,1));
printf("\n The value of T3 for Ksi_minus is : %3.1f ",ksi_minus(1,2));

// Result
//  
//  Reaction I 
//         pi_minus + p -> lambda_0  + K_0
// The value of T for K_0 is : 1.5 
// The value of T3 for K_0 is : -0.5 
//  Reaction II 
//         pi_plus + p -> lambda_0  + K_plus
// The value of T for K_plus is : 0.5 
// The value of T3 for K_plus is : 0.5 
//  Reaction III 
//         pi_plus + n -> lambda_0  + K_plus
// The value of T for K_plus is : 0.5 
// The value of T3 for K_plus is : 0.5 
//  Reaction VI 
 //        pi_minus + p -> sigma_minus  + K_plus
// The value of T for sigma_minus is : 1.0 
// The value of T3 for sigma_minus is : -1.0 
//  Reaction V 
//         pi_plus + p -> sigma_plus  + K_plus
// The value of T for sigma_plus is : 1.0 
// The value of T3 for sigma_plus is : 1.0 
//  Reaction VI 
 //        pi_plus + n -> ksi_minus  + K_plus + K_plus
// The value of T for Ksi_minus is : 0.5 
// The value of T3 for Ksi_minus is : -0.5  
