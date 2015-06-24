// Scilab code Exa. 3.9.1 : To calculate the age of uranium mineral: Page no. 143 : (2011)
t_h = 4.5e+09; // Half life of mineral, years
D_c = 0.6931/t_h; // Decay constant of minerals, years^-1
N_1 = 6.023e+023/238; // Number of nuclei in 1g of Uranium
N = 6.023e+023*0.093/206; // Number of nuclei in 0.093g of lead
t = log(1+N/N_1)/D_c; // Age of the mineral, years
printf("\n Age of the mineral : %6.4e years ", t)
// Result
//         Age of the mineral : 6.6261e+008 years