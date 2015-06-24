clear;
clc;

// Example 3.4
printf('Example 3.4\n\n');
//Page no. 82
// Solution

// Basis 100 g mol of Nd(4.5)Fe(77)B(18.5)
//(a)
n_Fe = 77-0.2;
printf('(a) Molecular formula after adding Cu is Nd(4.5)Fe(%.1f)B(18.5)Cu(.2).\n',n_Fe);

//(b)
o_ml1 = 4.5 ;//[kg mol]
o_ml2 = 77.0 ;//[kg mol]
o_ml3 = 18.5 ;//[kg mol]
o_ml4 = 0.0 ;//[kg mol]
f_ml1 = 4.5 ;//[kg mol]
f_ml2 = 77.0-0.2 ;//[kg mol]
f_ml3 = 18.5 ;//[kg mol]
f_ml4 = 0.2 ;//[kg mol]
mw1 = 144.24  ;//molecular weight of Nd
mw2 =  55.85  ;//molecular weight of Fe
mw3 =  10.81 ; //molecular weight of B
mw4 =  63.55  ;//molecular weight of Cu
m1 = mw1*f_ml1;
m2 = mw2*f_ml2;
m3 = mw3*f_ml3;
m4 = mw4*f_ml4;
f1 = f_ml1/100;
f2 = f_ml2/100;
f3 = f_ml3/100;
f4 = f_ml4/100;
tf = f1+f2+f3+f4;
printf('\n (b) Component     Original g mol    Final g mol        Mol.Wt.        g.             Mass fraction\n')
printf('     Nd            %.2f              %.2f               %.2f         %.2f         %.3f\n',o_ml1,f_ml1,mw1,m1,f1);
printf('     Fe            %.2f             %.2f              %.2f          %.2f        %.3f\n',o_ml2,f_ml2,mw2,m2,f2);
printf('     B             %.2f             %.2f              %.2f          %.2f         %.3f\n',o_ml3,f_ml3,mw3,m3,f3);
printf('     Cu            %.2f              %.2f               %.2f          %.2f          %.3f\n',o_ml4,f_ml4,mw4,m4,f4);
printf('\n     Total         100.0             100.0                             %.2f        %.3f\n',m1+m2+m3+m4,tf);
