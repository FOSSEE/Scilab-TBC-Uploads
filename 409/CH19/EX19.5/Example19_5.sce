clear ;
clc;
// Example 19.5
printf('Example 19.5\n\n');
//Page no. 578
// Solution 

Vo = 3.0 ;// Initial volume of the solution containing the culture and virus-[L]
Vp = 0.1 ;// Volume of the polymer solution added to the vessel -[L]
Kpc = 100 ;// Partition coefficient for virus(cp/cc) between two phases

//Use virus particle balance to get cp/co, where co is initial concentration of  virus in solution of culture and virus
Vc = Vo ;// At equilibrium -[L]
cp_by_co = Vo/(Vp+(Vo/Kpc)) ;// Ratio of concentration of virus in polymer phase at equilibrium to initial concentration of virus in culture phase
Fr_rec = cp_by_co*(Vp/Vo) ;// Fraction of the initial virus in the culture phase that is recovered in the polymer phase 

printf('\n Fraction of the initial virus in the culture phase that is recovered in the polymer phase  is %.2f .\n ',Fr_rec);