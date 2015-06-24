clear ;
clc;
// Example 10.5
printf('Example 10.5\n\n');
// Page no. 279
// Solution

//(a)Solution of Example 10.1 using element balance
printf('(a)Solution of Example 10.1 using element balance\n');
F = 100 ;// feed to the reactor-[g mol]
// Composition of feed
CH4 =  0.4*F ;// [g mol]
Cl2 =  0.5*F ;// [g mol]
N2 =  0.1*F ;//[g mol]

n_un = 10 ;// Number of unknowns in the given problem(excluding extent of reaction)
n_ie  = 10 ;// Number of independent equations
d_o_f =  n_un-n_ie ;// Number of degree of freedom
printf('    Number of degree of freedom for the given system is  %i \n',d_o_f);

// Extent of reaction can be calculated by using eqn. 9.3 
// Based on CH4
nio_CH4 = CH4 ;//[g mol CH4]
vi_CH4 = -1; // coefficint of CH4
ex_CH4 = -(nio_CH4)/vi_CH4 ;// Max. extent of reaction based on CH4

// Based on Cl2
nio_Cl2 =  Cl2 ;//[g mol Cl2]
vi_Cl2 = -1 ;// coefficint of Cl2
ex_Cl2 = -(nio_Cl2)/vi_Cl2 ;// Max. extent of reaction based on Cl2

if (ex_Cl2 > ex_CH4 )    
 printf('    CH4 is limiting reactant  \n');
  else
printf(' \n (b) Cl2 is limiting reactant  \n');
end
// By execution of above block its clear that CH4 is limiting reactant,therefore
cn_CH4 =  67/100 ;// percentage conversion of CH4(limiting reagent)
no_CH4 = CH4-(cn_CH4*CH4) ;//CH4 in product -[g mol]

// Product composition using element balance
// By N2 balance
no_N2 = N2;//N2 in product -[g mol]

C = CH4 ;//moles of CH4  =  moles of C (by molecular formula)
H = 4*CH4 ;// moles of H  =  4*moles of CH4 (by molecular formula)
Cl = 2*Cl2 ;// moles of Cl = 2* moles of Cl2 (by molecular formula)
// Solving following 3 eqn. obtained from balance of C,H,Cl for 3 unknowns
//1.  C-no_CH4*1 =  1*no_CH3Cl
//2. H-4*no_CH4 = 3*no_CH3Cl+no_HCl*1
//3. Cl = no_Cl2*2 + no_HCl*1+1*no_CH3Cl
a = [0 0 1;0 1 3;2 1 1] ;// matrix formed by coefficients of unknowns 
b = [C-no_CH4*1;H-4*no_CH4;Cl] ;//matrix formed by constant
x = a^(-1)*b ;// matrix of solution

// As we have taken F = 100 so answers we are getting can be directly used as percentage composition
printf('\nComposition of product stream in %% g mol of products\n');
printf('Product            Percentage g mol\n');
printf('\nCH4                %.1f%% g mol\n',no_CH4);
printf('\nCl2                %.1f%% g mol\n',x(1));
printf('\nCH3Cl              %.1f%% g mol\n',x(3));
printf('\nHCl                %.1f%% g mol\n',x(2));
printf('\nN2                 %.1f%% g mol\n',no_N2);

//(b)Solution of Example 10.3 using element balance
printf('______________________________________________________________________________');
printf('\n\n(b)Solution of Example 10.3 using element balance\n');
F = 1 ;//CH3OH -[gmol]
yld = 75 ;//[%]
cnv = 90 ;//conversion of methanol-[%]

// For amount of air 
// Entering O2 is twice the O2 required by reaction 1,therefore
f_O2 = 0.21 ;// mol. fraction of O2
f_N2 = 0.79 ;// mol. fraction of N2
n_O2 = 2*((1/2)*F) ;// entering oxygen -[g mol]
air =  n_O2/f_O2 ;// Amount of air entering
n_N2 = air-n_O2  ;// entering nitrogen -[g mol]

// Degree of freedom analysis
n_un = 9 ;// Number of unknowns in the given problem(excluding extent of reactions)
n_ie  = 9 ;// Number of independent equations
d_o_f =  n_un-n_ie ;// Number of degree of freedom
printf('  Number of degree of freedom for the given system is  %i \n',d_o_f);

// Product composition using element balance
// By N2 balance
no_N2 = n_N2 ;// inert ,terefore input  =  output
C = 1*F ;//moles of C  =  moles of CH3OH (by molecular formula)
H = 4*F ;//moles of H  =  4*moles of CH3OH (by molecular formula)
O =  1*F +2*n_O2;// moles of O =  1*moles of CH3OH + O in air
no_CH2O = yld/100 ;//[g mol]
no_CH3OH = F-((cnv/100)*F);// [g mol]

// Solving following 3 eqn. obtained from balance of C,H,O for 3 unknowns
a = [0 0 1;0 2 0;2 1 1] ;// matrix formed by coefficients of unknowns 
b = [(C-(no_CH3OH*1+no_CH2O*1));(H-(4*no_CH3OH+2*no_CH2O));(O-(no_CH3OH*1+no_CH2O*1))] ;//matrix formed by constant
x = a\b ;// matrix of solution

P = no_CH2O+no_CH3OH+no_N2+x(1)+x(2)+x(3);

// Composition of product
y_CH3OH = (no_CH3OH/P )*100;// mole %
y_O2 = ((x(1))/P)*100;// mole %
y_CH2O = (no_CH2O/P)*100 ;// mole %
y_CO = (x(3)/P)*100 ;// mole %
y_H2O = (x(2)/P)*100 ;// mole % 
y_N2 = (no_N2/P )*100;// mole %


printf('\nComposition of product\n');
printf('Component        mole percent\n');
printf(' CH3OH           %.1f %%\n',y_CH3OH);
printf(' O2              %.1f %%\n',y_O2);
printf(' CH2O            %.1f %%\n',y_CH2O);
printf(' CO              %.1f %%\n',y_CO);
printf(' H2O             %.1f %%\n',y_H2O);
printf(' N2              %.1f %%\n',y_N2);