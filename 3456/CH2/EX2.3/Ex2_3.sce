//Example 2.3
//Calculation of Stresses from elastic strains
//Page No. 52
clc;clear;close;

E=200;              //in GPa
nu=0.33;            //no unit
e1=0.004;            //no unit
e2=0.001;            //no unit
sigma1=E*(e1+nu*e2)/(1-nu^2);
sigma2=E*(e2+nu*e1)/(1-nu^2);
sigma1=sigma1*1000;        //conversion to MPa
sigma2=sigma2*1000;        //conversion to MPa
printf('\nsigma1 = %g MPa\nsigma2 = %g MPa\n',sigma1,sigma2);
printf('\nNote: Slight calculation errors in Book')
