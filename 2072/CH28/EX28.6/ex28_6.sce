//Chapter 28
clc
//Example 6
//given
Z=74 //atomic number of tungsten
Eo=13.6 //ground state enenrgy in ev
E_K=-(Z-1)^2*(13.6) //Energy of the electron in K shell
n=3
Z_eff=Z-n^2
E3=Eo/n^2
E_M=-Z_eff^2*E3
E=E_M-E_K
disp(E,"Energy of the characteristic emiited from tungsten target when electron drops from M shell to K shell in ev is")
//Difference in answer is because of roundoff
