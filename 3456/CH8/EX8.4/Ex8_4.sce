//Example 8.4
//Effect of Strain Rate
//Page No. 298
clc;clear;close;

C_70=10.2;            //in ksi
C_825=2.1;             //in ksi
m_70=0.066;            //no unit
m_825=0.211;             //no unit
e1=1;             //no unit                  
e2=100;             //no unit
printf('\nAt 70deg F\n');
sigma_a=C_70*e1^m_70;
sigma_b=C_70*e2^m_70;

printf('sigma_a = %g ksi\nsigma_b = %g ksi\nsigma_b/sigma_a = %g\n',sigma_a,sigma_b,sigma_b/sigma_a);
printf('\n\nAt 825deg F\n');
sigma_a=C_825*e1^m_825;
sigma_b=C_825*e2^m_825;
printf('sigma_a = %g ksi\nsigma_b = %g ksi\nsigma_b/sigma_a = %g\n',sigma_a,sigma_b,sigma_b/sigma_a);
