// Estimate the temperature at which the ductility of brittle transition occurs at given strain rates
clc
Gamma = 2// specific surface energy in J/m^2
Y = 350 // Young’s modulus in GN/m^2
c = 2 // half length of crack
de_dt1 = 1e-2 // strain rate
de_dt2 = 1e-5 // strain rate
printf("\n Example 12.3")
printf("\n Part A:")
sigma_f = sqrt(2*Gamma*Y*1e9/(%pi*c*1e-6))
sigma_y = sigma_f/1e6
T = 173600/(sigma_y-20.6-61.3*log10(de_dt1))// temperature calculation

printf("\n Transition temperature for strain rate %.0e s^-1 is %d K",de_dt1,T)// answer in book is 300 K
printf("\n\n Part B:")

T = 173600/(sigma_y-20.6-61.3*log10(de_dt2))// temperature calculation

printf("\n Transition temperature for strain rate %.0e s^-1 is %d K",de_dt2,T)// answer in book is 230 K
// Solution in book for two parts is divided into three parts

