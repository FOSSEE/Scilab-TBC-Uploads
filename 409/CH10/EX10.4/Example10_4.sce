clear;
clc;
// Example 10.4
printf('Example 10.4\n\n');
// Page no. 273
// Solution

F = 4000 ;//[kg]
m_H2O = 18.02 ;// molecular masss of water
m_C6H12O6 = 180.1 ;// molecular mass of glucose
m_CO2 = 44 ;//molecular mass of CO2
m_C2H3CO2H = 72.03 ;// molecular mass of C2H3CO2H
m_C2H5OH = 46.05 ;// molecular mass of ethanol

p_H2O = 88 ;// [%]
p_C6H12O6 = 12;// [%] 
ni_H2O = (F*p_H2O/100)/m_H2O ;// initial moles of water
ni_C6H12O6 = (F*(p_C6H12O6/100))/m_C6H12O6 ;// initial moles of glucose

// Degree of freedom analysis
n_un = 9 ;// Number of unknowns in the given problem
n_ie  = 9 ;// Number of independent equations
d_o_f =  n_un-n_ie ;// Number of degree of freedom
printf('Number of degree of freedom for the given system is  %i \n',d_o_f);

ur_C6H12O6 =  90 ;//[kg]
pr_CO2 = 120 ;//[kg]
nf_C6H12O6 = ur_C6H12O6/m_C6H12O6 ;// [kmoles]
nf_CO2 = pr_CO2/m_CO2 ;// [kmoles]

// solve following eqn. (b) and (e)simultaneously 
//(b):  nf_C6H12O6 = ni_C6H12O6+-1*ex_r1+-1*ex_r2
//(e):  nf_CO2 = 0+2*ex_r1+ 0*ex_r2
a = [-1 -1;2 0];// matrix formed by coefficients of unknowns 
b = [(nf_C6H12O6-ni_C6H12O6);nf_CO2];//matrix formed by constant
x = a^(-1)*b;//matrix formed by solution
printf(' Extent of reaction 1 is %.3f kg moles reacting \n',x(1));
printf(' Extent of reaction 2 is %.3f kg moles reacting \n',x(2));

nf_H2O = ni_H2O+0*x(1) +2*x(2);// from eqn. (a)-[kmoles]
nf_C2H5OH = 0+2*x(1)+0*x(2);// from eqn.(c)-[kmoles]
nf_C2H3CO2H = 0+0*x(1)+2*x(2) ;//from eqn.(d)-[kmoles]
total_wt = m_H2O*nf_H2O + m_C6H12O6*nf_C6H12O6 + m_CO2*nf_CO2 + m_C2H3CO2H*nf_C2H3CO2H + m_C2H5OH*nf_C2H5OH;
mp_C2H5OH = (m_C2H5OH*nf_C2H5OH*100)/total_wt ;// Mass percent of ethanol -[%]
mp_C2H3CO2H = (m_C2H3CO2H*nf_C2H3CO2H*100)/total_wt ;//Mass percent of propenoic acid -[%]

printf(' \n Mass percent of ethanol in broth at end of fermentation process is  %.1f %%\n',mp_C2H5OH);
printf(' Mass percent of propenoic acid  in broth at end of fermentation process is  %.1f %%\n',mp_C2H3CO2H);