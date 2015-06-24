//Example No. 3_08
//-ve Integer to binary
//Pg No. 50
clear ; close ; clc ;

negint = -13
posbin = dec2bin(abs(negint))
posbin = strcat(['0',posbin])
compl_1 = strsubst(posbin,'0','d')
compl_1 = strsubst(compl_1,'1','0')
compl_1 = strsubst(compl_1,'d','1')
compl_2 = dec2bin(bin2dec(compl_1) + 1)

disp(compl_2,'Binary equivalent of -13 is ')