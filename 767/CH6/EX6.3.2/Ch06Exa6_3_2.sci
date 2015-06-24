// Scilab code Exa6.3.2 : To calculate the kinetic energy of protons and no. of  possibile reactions:  Page 265 (2011)
V = 5; // Voltage of accelerator, MV
// Declare three cells (for three reactions): Page no. : 133(2011)
 R1 = cell(3,2)
 R2 = cell(10,2)
// Enter data for first cell (Reaction)
R1(1,1).entries = "p";
R1(1,2).entries = 1;
R1(2,1).entries = 'd';
R1(2,2).entries = 1;
R1(3,1).entries = 'He';
R1(3,2).entries = 2;
E_p =  (R1(1,2).entries)*V
E_d =  (R1(2,2).entries)*V
E_He =  (R1(3,2).entries)*V
 // Enter data for second cell (Reaction)
 R2(1,1).entries = "p"
 R2(1,2).entries = 1
 R2(2,1).entries = "N"
 R2(2,2).entries = 14
 R2(3,1).entries = "O"
 R2(3,2).entries = 15
 R2(4,1).entries = "y"
 R2(4,2).entries = 0
 R2(5,1).entries = "d"
 R2(5,2).entries = 1
 R2(6,1).entries = "n"
 R2(6,2).entries = 0
 R2(7,1).entries = "He"
 R2(7,2).entries = 3
 R2(8,1).entries = "C"
 R2(8,2).entries = 13
 R2(9,1).entries = "He"
 R2(9,2).entries = 4
 R2(10,1).entries = "C"
 R2(10,2).entries = 12
 printf("\nProtons energy   = -%d MeV \n Deuterons energy   = -%d MeV  \n Double charged He-3  = -%d MeV", E_p, E_d, E_He)
 printf("\n Possible reaction at these energies are")
 printf("\n %s + %s(%d) --->   %s(%d)+ %s", R2(1,1).entries,R2(2,1).entries,R2(2,2).entries,R2(3,1).entries,R2(3,2).entries,R2(4,1).entries)
printf("\n %s + %s(%d) --->   %s(%d) + %s ", R2(5,1).entries,R2(2,1).entries,R2(2,2).entries,R2(3,1).entries,R2(3,2).entries,R2(6,1).entries)
printf("\n %s(%d) +%s(%d)  --->   %s(%d)+ %s", R2(7,1).entries,R2(7,2).entries,R2(8,1).entries,R2(8,2).entries,R2(3,1).entries,R2(3,2).entries,R2(6,1).entries)
 printf("\n %s(%d) + %s(%d)  --->  %s(%d) +%s", R2(9,1).entries,R2(9,2).entries,R2(10,1).entries,R2(10,2).entries,R2(3,1).entries,R2(3,2).entries,R2(6,1).entries)

// Result
// Protons energy   = -5 MeV 
// Deuterons energy   = -5 MeV  
// Double charged He-3  = -10 MeV
// Possible reaction at these energies are
// p + N(14) --->   O(15)+ y
// d + N(14) --->   O(15) + n 
// He(3) +C(13)  --->   O(15)+ n
// He(4) + C(12)  --->  O(15) +n
