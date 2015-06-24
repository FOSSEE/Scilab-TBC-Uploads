//Composition Conversion- From weight percent to Atom percent

clear;
clc;

printf("\t Example 4.3\n");

//Conversion to Atom percent
function[C]=conc(C1,C2,A1,A2)
    C=C1*A2*100/((C1*A2)+(C2*A1));
    funcprot(0)
endfunction


C_Al=97;       //Aluminium wt%
C_Cu=3;        //Copper wt%
A_Al=26.98;    //Atomic wt of Aluminium
A_Cu=63.55;    //Atomic wt of Copper

CAl=conc(C_Al,C_Cu,A_Al,A_Cu);
CCu=conc(C_Cu,C_Al,A_Cu,A_Al);

printf("\nAtomic %% of Al is %.1f %%",CAl);
printf("\nAtomic %% of Cu is %.1f %%\n",CCu);

//End