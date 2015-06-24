clear    
clc
disp('Exa-1.1');
Mn=1.008665;Mp=1.007276                                     //Given mass of an electron and a proton in terms of u
Md= Mn-Mp;                                                  //mass difference
printf('Mass difference in terms of U is %f ',Md);         
Md=Md*931.50;                                              //converting u into Mev/c^2 by multiplying by 931.5 MeV/c^2
printf('which equals %.3f Mev/c^2.',Md);
