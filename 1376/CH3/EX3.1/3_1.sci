// 3.1
clc;
disp('For spring controlled Tc is proportional to theta')
theta=90*(3/5)^2;
printf("Deflection for spring controlled instrument=%.2f degree",theta)
disp('For gravity controlled Tc is proportional to sin(theta)')
theta=asind((3/5)^2);
printf("\nDeflection for gravity controlled instrument=%.2f degree",theta)
