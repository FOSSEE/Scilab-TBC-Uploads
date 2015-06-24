
//Ex1_15

clc;

//Given:
H1=4.1; // in eV/molecule
H2=17.4; // in eV/molecule
H3=200;// in MeV/atom of U

// 1 eV/atom  = 96.32 KJ/mol

//solution: part (a)
e1=H1*96.32;
printf("\n The energy release in part (a) in KJ/mol of carbondioxide is = %f ",e1)

//solution: part (b)
e2=H2*96.32;
printf("\n The energy release in part (b) in KJ/mol of alumina is = %f ",e2)

//solution: part (c)
e3=H3*1000*96.32;// in MJ/atom of U(235)
printf("\n The energy release in part (c) in MJ/atom of U(235) is = %f ",e3)
