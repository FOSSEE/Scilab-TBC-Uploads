clear;
clc;
// Example 10.9
printf('Example 10.9\n\n');
// Page no. 290
// Solution

F = 100  ;// feed of coal -[lb]
// given coal composition-given
C = 83.05 ;//[%]
H = 4.45 ;//[%]
O = 3.36 ;// [%]
N = 1.08 ;// [%]
S = 0.70  ;//[%]
ash = 7.36;//[%]
H2O = 3.9 ;//[%]
w_C = 12 ;// mol. wt. of C
w_H =  1.008;//mol. wt. of H
w_O = 16 ;// mol. wt. of O
w_N = 14 ;// mol. wt. of N
w_S = 32  ;//mol. wt. of S

//given stack gas analysis-given
CO2 =  15.4 ;//[%]
CO = 0.0 ;//[%]
O2 = 4.0 ;// [%]
N2 = 80.6 ;//[%]
//given refuse analysis
ash_R = 86 ;//[%]
odr = 14 ;//[%]

H2O_air =  .0048 ;// [lb H2O/lb dry air]
m_air = 29 ;// mol. wt. of air
mf_O2 = 0.21 ;// mole fraction of  O2 in air
mf_N2 = 0.79 ;//mole fraction of  N2 in air
m_H2O =  18 ;// mol. wt. of H2O

H_cl = (H2O*2)/m_H2O ;// lb mol of H in coal moisture
O_cl = H_cl/2 ;// lb mol of O in coal moisture

H_air = (H2O_air*m_air )/m_H2O;// lb mol of H per lb mol air
O_air = H_air/2 ;// lb mol of O per lb mol  air 

// Ash balance to get refuse(R)
R = ash/(ash_R/100) ;// Refuse-[lb]
//refuse composition
pub_cl = 14 ;// percentage of unburned coal in refuse-[%]
ub_cl =  (14/100)*R ;// amount of unburned coal in refuse
C_p = (C/(100-ash))*ub_cl ;//  C in unburned coal-[lb]
H_p = (H/(100-ash))*ub_cl ;//  H in unburned coal-[lb]
O_p =  (O/(100-ash))*ub_cl ;//  O in unburned coal-[lb]
N_p =  (N/(100-ash))*ub_cl ;//  N in unburned coal-[lb]
S_p =  (S/(100-ash))*ub_cl ;//  S in unburned coal-[lb]
mol_C =  C_p/w_C;// lb mol of C
mol_H = H_p/w_H ;// lb mol of H
mol_N = N_p/w_N ;// lb mol of N
mol_O = O_p/w_O ;// lb mol of O
mol_S = S_p/w_S ;// lb mol of S 

// Degree of freedom analysis 
n_un = 4 ;// Number of unknowns in the given problem(excluding extent of reactions)
n_ie  = 4 ;// Number of independent equations
d_o_f =  n_un-n_ie ;// Number of degree of freedom
printf('Number of degree of freedom for the given system is  %i \n\n',d_o_f);

//Using element balance of C+S, N& H
P = (C/w_C + S/w_S - (mol_C+mol_S ))/.154 ;// mol of stack gas-[lb mol]
A = (2*P*.806 +2*mol_N-N/w_N)/(2*mf_N2) ;// mol of air -[lb mol]
W = (H/w_H +H_cl+H_air*A-mol_H)/2 ;// moles of exit water-[lb mol]
printf(' Moles of stack gas(P)   -      %.1f  lb mol\n',P);
printf(' Moles of air (A)        -      %.1f lb mol \n',A);
printf(' Moles of exit water(W)  -      %.1f lb mol \n',W);
// by using P,W , A and O2 balance we get 19.8 =  20.3 , therefore difference is about 1%

//Calculation of excess air
// For O2 required
C_req =  (C/w_C)/1 ;// O2 required by entering C given by reaction C+O2--->CO2 -[lb mol]
H_req = (H/w_H)/4 ;// O2 required by entering H by given reaction H2+(1/2)*O2--->H20-[lb mol]
N_req = 0 ;// inert
O_req = (O/w_O)/2 ;// O2 required by entering O-[lb mol]
S_req = (S/w_S)/1 ;// O2 required by entering S-given by S+O2--->SO2 -[lb mol]
total_O2_req =  C_req+H_req+N_req+O_req +S_req ;// Total oxygen required-[lb mol]
O2_in = A*mf_O2 ;// O2 entering in air
ex_air = 100*((O2_in-total_O2_req)/total_O2_req) ;//[% of excess air]
printf('\n Excess air is %.1f %%.\n',ex_air);