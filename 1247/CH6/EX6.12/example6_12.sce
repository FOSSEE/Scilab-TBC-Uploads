clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.12
// Page 371
printf("Example 6.12, Page 371 \n \n");

// solution
F = 5000 //kg/h  solvent free mix fed to simple crystallization unit
B1 = 4000/157.5 // kmol/h   p-NCB in feed
A1 = 1000/157.5 // kmol/h   o-NCB in feed
// after crstallization mother liquor has 33.1 mol % B, A doesn't crstallizes
m = A1/(1-.331)   // mother liquor entering extractive crytallization unit
B2 = m-A1
// optimizing solid flux
// dCt/dR = 1 - 2/R^3 = 0
R = 2^(1/3)
// referring fig 6.14
// overall material balance
// p-isomer (B)
// .98D + xT = 4000      (i)
// o-isomer (A)
// .02D + (1-.05-x)T = 1000      (ii)
// material balance around solvent recovery unit
// B
// 2.26Tx = .198G = xH         (iii)
// A
// 2.26T(.95-x) = .531G          (iv)
// solving above eq
T = 1337.6 // kg/h
D = 3729 // kg/h
G = 3939 // kg/h
x = .258
//putting these values we get composition of various streams
printf(" Composition of various streams : \n Component           T kg/h              D kg/h\n     A               925.6               74.6 \n     B               345.1               3654.9 \n     C               66.9                nil \n \n")
printf(" Purity of top product = 69.2 percent A \n Purity of bottom product = 98.0 percent \n Make-up solvent = 66.9 kg/h.")
