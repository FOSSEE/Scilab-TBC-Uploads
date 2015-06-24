// chapter 7 , Example 7.13 , pg 215
Ud=3.2*10^-3    //electron drift mobility  (in m^2/(V*s))
sigma=5.9*10^7    //conductivity  (in /(ohm*m))
e=1.6*10^-19     //charge of electron (in C)
Na=6.022*10^23    //Avogadro constant (in mol^-1)
ni=sigma/(Ud*e)     //intrinsic concentration   (in m^-3)
Aw=63.5     //atomic weight
d=8960   //density   (in Kg/m^3)
n=10^3  //number of free electrons per atom
N=(Na*d*n)/Aw     //concentration of free electrons in pure Cu
Avg_N=ni/N      //Average number of electrons contributed per Cu atom
printf("concentration of free electrons in pure Cu   (in m^-3)")
disp(N)
printf("Average number of electrons contributed per Cu atom\n")
printf("Avg_N=%.2f ",Avg_N)
