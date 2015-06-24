

clc
//Given that

sigma_t=415 //True stress in MPa
et=0.1 //True strain
K=1035 // Bulk modulus in MPa

printf(" Example 9.5\n")

n=log(sigma_t/K)/log(et)

printf("\n Strain hardening coefficient is %.2f",n);
