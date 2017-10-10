//chapter 4 Ex 32

clc;
clear;
close;
girlsLeave=15; boysEachgirl=2; boysLeave=45; girlsEachboy=5;
//let x boys are there at present; thus totalboys=x+45; girls=5*x
boysPresent=boysLeave/(girlsEachboy*boysEachgirl-1);
girlsBeginning=girlsEachboy*boysPresent+girlsLeave;
mprintf("The number of girls in the beginning were %d",girlsBeginning);
