clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.8
// Page 362
printf("Example 6.8, Page 362 \n \n");

// solution

F = 1000 //kg/h    Basis feed rate
// using fig 6.11
// W/A = 15.77/5.87
// A+F+W = 1000
// solving it
W = 15.77*F/21.64 //kg/h
A = F-W //kg/h
// material balance across C3
// R+R1 = D+W
// W/D = 19.31/1.81
// solving it
D = 1.81*W/19.31  //kg/h
M1 = D+W
// R1/R = 4.63/6.57
R1 = 4.63*793/11.2
R = M1-R1
// material balance across C2
m = .89 // = E1/R1
// E = A+E1+R1 = A+M11
// M11/A = 15.6/3.97
M11 = 15.6*A/3.97
E = M11 + A
E1 = M11 - R1
// material balance across C1
// F+S = M = E+R
M = E+R
S = D+E1
AAloss = W*.4*100/(100*.3)
AArec = 100-AAloss
printf(" Summary : \n Stream                        Flow rate (kg/h) \n Feed                          "+string(F)+" \n Solvent                       "+string(S)+" \n Extract                       "+string(E)+" \n Raffinate                     "+string(R)+" \n Acetic acid                   "+string(A)+" \n Top layer from D1             "+string(E1)+" \n Bottom layer from D1          "+string(R1)+" \n Feed to C3                    "+string(M1)+" \n Overhead from C3              "+string(D)+" \n Water waste                   "+string(W)+" \n Stream                        "+string(M)+"")
