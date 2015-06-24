//page no 44
//example no 2.5
//FETCHING AN INSTRUCTION.
clc;
printf('Memory Location 2005H= 4FH \n');
printf('Address bus= 2005H \n') //program counter places the 16-bit address on the address bus.
printf('Control bus--> (MEMR) \n'); //control bus sends memory read control signal.
printf('Data bus= 4FH \n'); //instruction 4FH is fetched and transferred to instruction decoder.
