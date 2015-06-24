//computation of standard emf of a cell

clear;
clc;

printf("\t Example 19.3\n");

E0cathode=0.8;//standard electrode potential of cathode(Ag+/Ag), V
E0anode=-2.37;//standard electrode potential of anode(Mg2+/Mg), V

E0cell=E0cathode-E0anode;//standard emf of the cell, V

printf("\t the standard emf of the cell is : %4.2f V\n",E0cell);

//End
