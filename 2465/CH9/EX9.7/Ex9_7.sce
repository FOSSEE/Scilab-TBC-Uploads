//Chapter-9,Example 7,Page 221
clc();
close();

lamda_HCl=426.1    //equivalent conductance of HCl

lamda_AcONa=91    //equivalent conductance of AcONa

lamda_NaCl=126.5    //equivalent conductance of NaCl

//  lamda_HCl + lamda_AcONa - lamda_NaCl= (lamda_H+lamda_Cl)+(lamda_Na+lamda_OAc)-(lamda_Na+lamda_Cl)
//                                      = lamda_H +lamda_OAc  = lamda_AcOH

lamda_AcOH = lamda_HCl + lamda_AcONa - lamda_NaCl

printf('the equivalent conductance of AcOH = %.2f/ohm.cm^2',lamda_AcOH)
