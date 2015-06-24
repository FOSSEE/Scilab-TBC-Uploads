//Example 21.1 // electron spin magnetic dipole moment 
clc;
clear;
//given data :
ub=5.6D-5;//electron spin magnetic moment in eV
kbT=1/40;//approximate value kb(constant) & at room temperature  in eV
u=ub/kbT;//formula
if(u<1)
    disp(u,"electron spin magnetic dipole moment & kbT/ub>>1")
    
   else
       disp(u,"kbT/ub<<1 so it is  wrong")
       end
