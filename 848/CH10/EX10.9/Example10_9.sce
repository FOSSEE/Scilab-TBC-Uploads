//clear//
//Caption:Fiber Bragg Grating: Peak Reflectivity, Coupling coefficient, full-bandwidth
//Example10.9.a
clear;
close;
clc;
kL = [1,2,3];
Rmax = tanh(kL)^2;
//Example10.9.b
L =0.5e-02;
Lambda_Bragg = 1530e-09;
neff = 1.48;
delta_n = 2.5e-04;
etta = 82/100;
k = %pi*delta_n*etta/Lambda_Bragg;
delta_Lambda = (Lambda_Bragg^2)*(((k*L)^2+%pi^2)^0.5)/(%pi*neff*L);
disp(k/100,'Coupling coefficient per cm k =')
disp(delta_Lambda*1e09,'full bandwidth in nm =')
disp('____________________________________________')
disp('kL             Rmax(%)')
disp('____________________________________________')
disp(kL,'kL')
disp(Rmax*100,'Rmax')
disp('____________________________________________')
//Result
// Coupling coefficient per cm k =  4.2093235  
// full bandwidth in nm =       0.3807652 
// ____________________________________________   
//  kL             Rmax(%)   
// ____________________________________________   
//  kL   
// 
//    1.             2.           3.  
//  Rmax   
//   58.002566    92.934918    99.013396  
// ____________________________________________ 
