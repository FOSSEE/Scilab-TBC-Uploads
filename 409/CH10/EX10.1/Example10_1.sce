clear;
clc;
// Example 10.1
printf('Example 10.1\n\n');
//Page no. 264
// Solution

F = 100 ;// feed to the reactor-[g mol]
// Composition of feed
CH4 = 0.4*F ;// [g mol]
Cl2 = 0.5*F ;// [g mol]
N2= 0.1*F ;//[g mol]

// Extent of reaction can be calculated by using eqn. 9.3 
// Based on CH4
nio_CH4 = CH4 ;//[g mol CH4]
vi_CH4 = -1 ;// coefficint of CH4
ex_CH4 = -(nio_CH4)/vi_CH4 ;// Max. extent of reaction based on CH4

// Based on Cl2
nio_Cl2 = Cl2 ;//[g mol Cl2]
vi_Cl2 = -1 ;// coefficint of Cl2
ex_Cl2 = -(nio_Cl2)/vi_Cl2 ;// Max. extent of reaction based on Cl2

if (ex_Cl2 > ex_CH4 )    
 printf(' \n CH4 is limiting reactant  \n');
  else
printf(' \n (b) Cl2 is limiting reactant  \n');
end
// By execution of above block its clear that CH4 is limiting reactant, therefore extent of reaction is
cn_CH4 = 67/100 ;// percentage conversion of CH4
ex_r = (-cn_CH4)*CH4/vi_CH4 ;// extent of reaction
printf(' extent of reaction is %.1f g moles reacting \n',ex_r);

n_un = 11 ;// Number of unknowns in the given problem
n_ie = 11 ;// Number of independent equations
d_o_f = n_un-n_ie ;// Number of degree of freedom
printf(' Number of degree of freedom for the given system is  %i \n',d_o_f);

// Product composition using species balance using eqn.10.2
vi_CH3Cl = 1;
vi_HCl = 1;
vi_N2 = 0;
p_CH4 = CH4+(vi_CH4*ex_r);// [g mol]
p_Cl2 = Cl2+(vi_Cl2*ex_r);// [g mol]
p_CH3Cl = 0+(vi_CH3Cl*ex_r);// [g mol]
p_HCl = 0+(vi_HCl*ex_r);// [g mol]
p_N2 =  N2+(vi_N2*ex_r);// [g mol]
// As we have taken F = 100 so answers we are getting can be directly used as percentage composition
printf('\n\nComposition of product stream in %% g mol of products\n');
printf('\nProduct            Percentage g mol\n');
printf('\nCH4                %.1f%% g mol\n',p_CH4);
printf('\nCl2                %.1f%% g mol\n',p_Cl2);
printf('\nCH3Cl              %.1f%% g mol\n',p_CH3Cl);
printf('\nHCl                %.1f%% g mol\n',p_HCl);
printf('\nN2                 %.1f%% g mol\n',p_N2);