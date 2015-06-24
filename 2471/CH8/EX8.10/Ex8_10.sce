clear ;
clc;
// Example 8.10
printf('Example 8.10\n\n');
printf('Page No. 240\n\n');

P = 100;// Power in 10^3 W
C = 5;// Charge in Euro per 10^3 per month
PF = [1.0 0.9 0.8 0.7 0.6 0.5];// Power factor 
for i = [1:1:6]
    VA = (PF(i)\P)*C
    printf('Charge per month for power factor %.1f is %.0f Euro \n', PF(i),VA)
end
