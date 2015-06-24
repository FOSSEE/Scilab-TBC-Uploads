//Chapter 3_Semoconductor Devices Fundamentals
//Caption : Resistivity
//Example3.2: A Sample of Si is doped with 10^17 phosphorus atoms/cubic cm. What is its resistivity? Given Un=700square cm/v-sec.
//Solution:
clear;
clc;
function Res=resistivity(u,n)//n:doped concentration=10^17 atoms/cubic cm,  u: mobility of electrons=700square cm/v-sec.
    q=1.6*10^-19 //q:charge
    Res=1/(q*u*n)// since P is neglegible.
    disp('resistivity of the si doped with     n-dopant is:')// include ";" at the time of calling
    disp('ohm-cm',Res)
endfunction
// after executing calling resitivity( u=700 and n=10^17)i.e.,                      resistivity(10^17,700);
// Result: Resistivity of the Si doped with n-dopant is : 0.089 ohm-cm(approx)