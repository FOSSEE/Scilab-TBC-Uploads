// page no 325
// example no 10.3
// EXCHANGE OF DATA
clc;
printf('2050H--> 3FH \n \n');
printf('2051H--> 42H \n \n');
printf('DE--> 856FH \n');
printf('D--> 85H      E--> 6FH \n \n');
printf('LHLD 2050H \n'); // loads the HL register pair with data on 2050H & 2051H.
printf('H--> 42H      L--> 3FH \n \n');
printf('XCHG \n'); // exchange the data of HL register pair with DE register pair.
printf('D<-->H        E<-->L \n');
printf('D--> 42H      E--> 3FH \n H--> 85H      L--> 6FH \n \n');
printf('SHLD 2050H \n'); // stores the 16bit dat in HL register pair on memory location 2051H & 2050H.
printf('2050H--> 6FH \n');
printf('2051H--> 85H');
