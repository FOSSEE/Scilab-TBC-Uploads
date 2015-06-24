//computation of standard free energy change for a reaction

clear;
clc;

printf("\t Example 19.6\n");

n=2;
F=96500;//faraday constant, J/V mol

Co2=0.15;//conc of Co2+ ions, M
Fe2=0.68;//conc of Fe2+ ions, M

E0cathode=-0.44;//standard electrode potential of cathode(Fe2+/Fe), V
E0anode=-0.28;//standard electrode potential of anode(Co2+/Co), V

E0cell=E0cathode-E0anode;//standard emf of the cell, V

Ecell=E0cell-0.0257/2*log(Co2/Fe2);//calculation of cell potential at non standard conditions, V

if(Ecell>0) then
    printf("\t the reaction would proceed spontaneously in the direction written \n");
else
    printf("\t the reaction is not spontaneously in the direction written \n");
    end;

//End
