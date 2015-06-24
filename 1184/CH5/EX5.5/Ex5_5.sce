//Example 5-5, page No - 165

clear
clc

fd = 30*10^3
fm = 5*10^3
N=9


bw1 = 2*fm*N
bw2 = 2*[fd+fm]

printf('The maximum bandwidth of the fm signal calculated from fig 5.8 is %.1f Khz',bw1/10^3)
printf('\n The maximum bandwidth using carlos rule is %.1f khz',bw2/10^3)
