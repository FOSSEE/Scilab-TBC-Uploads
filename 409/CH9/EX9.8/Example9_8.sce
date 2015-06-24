clear;
clc;
// Example 9.8
printf('Example 9.8\n\n');
// Page no. 244
// Solution

m_C3H6 = 42.08;// molecular wt. of propene-[g]
m_C3H5Cl = 76.53 ;// molecular wt. of C3H5Cl-[g]
m_C3H6Cl2 = 112.99 ;// molecular wt. of C3H6Cl2-[g]
// Product analysis
pml_Cl2 = 141.0 ;// [g mol]
pml_C3H6 = 651.0 ;//[g mol]
pml_C3H5Cl = 4.6 ;// [g mol]
pml_C3H6Cl2 = 24.5 ;// [g mol]
pml_HCL = 4.6 ;//[g mol]

//(a)
a_Cl = pml_C3H5Cl; // Chlorine reacted by eqn.(a)
b_Cl = pml_C3H6Cl2 ;// Chlorine reacted by eqn.(b)
fed_Cl = pml_Cl2+a_Cl+b_Cl ;// Total chlorine fed to reactor-[g mol]
//by analysing reaction (a) and (b)
a_C3H6 = a_Cl+b_Cl ;// C3H6 reacted by reaction (a)
fed_C3H6 = pml_C3H6+a_C3H6 ;//Total C3H6 fed to reactor-[g mol]
printf('(a) Total chlorine fed to reactor is %.2f  g mol \n',fed_Cl);
printf('     Total C3H6 fed to reactor is %.2f  g mol \n',fed_C3H6);

//(b) and (c)
// Extent of reaction can be calculated by using eqn. 9.3 
// Based on C3H6
nio_C3H6 = fed_C3H6 ;//[g mol C3H6]
vi_C3H6 = -1 ;// coefficint of C3H6
ex_C3H6 = -(nio_C3H6)/vi_C3H6 ;// Max. extent of reaction based on C3H6

// Based on Cl2
nio_Cl2 =  fed_Cl; //[g mol Cl2]
vi_Cl2 = -1 ;// coefficint of Cl2
ex_Cl2 = -(nio_Cl2)/vi_Cl2 ;// Max. extent of reaction based on Cl2

if (ex_Cl2 > ex_C3H6 )
 printf(' \n (b) C3H6 is limiting reactant  \n');
 printf('    (c)Cl2 is excess reactant  \n');
 ex_r = ex_C3H6;
  else
printf(' \n (b) Cl2 is limiting reactant  \n');
 printf(' (c) C3H6 is excess reactant  \n');
 ex_r = ex_Cl2;
 end

//(d)
fr_cn = pml_C3H5Cl/fed_C3H6 ;//Fractional conversion of C3H6 to C3H5Cl
printf(' \n (d) Fractional conversion of C3H6 to C3H5Cl is %.2e  \n',fr_cn);

//(e)
sel = pml_C3H5Cl/pml_C3H6Cl2 ;// Selectivity of C3H5Cl relative to C3H6Cl2
printf(' \n (e) Selectivity of C3H5Cl relative to C3H6Cl2 is %.2f g mol C3H5Cl/g mol C3H6Cl2  \n',sel);

//(f)
yld = (m_C3H5Cl*pml_C3H5Cl)/(m_C3H6*fed_C3H6) ;// Yield of C3H5Cl per g C3H6 fed to reactor
printf(' \n (f) Yield of C3H5Cl per g C3H6 fed to reactor is %.3f g C3H5Cl/g C3H6  \n',yld);

//(g)
vi_C3H5Cl = 1  ;// coefficint of C3H5Cl
vi_C3H6Cl2 = 1  ;// coefficint of C3H6Cl2
ex_a = (pml_C3H5Cl-0)/vi_C3H5Cl ;// Extent of reaction a as C3H5Cl is produced only in reaction a
ex_b = (pml_C3H6Cl2-0)/vi_C3H6Cl2 ;// Extent of reaction b as C3H6Cl2 is produced only in reaction b
printf(' \n (g) Extent of reaction a as C3H5Cl is produced only in reaction a is %.1f   \n',ex_a);
printf('     Extent of reaction b as C3H6Cl2 is produced only in reaction b %.1f   \n',ex_b);

//(h)
in_Cl = fed_Cl*2 ;//Entering Cl -[g mol]
out_Cl  = pml_HCL ;// Exiting Cl in HCl-[g mol]
ef_w = out_Cl/in_Cl ;// Mole efficiency of waste
ef_pr =  1-ef_w ;// Mole efficiency of product
printf('\n (h) Mole efficiency of product is %.3f \n',ef_pr);