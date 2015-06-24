//Ex19_17 Pg-963
clc

//Integer part
bin='1011'; //binary input
dec_I=bin2dec(bin) //decimal output
oct_I=dec2oct(dec_I) //octal output

//Decimal part
bin='11010'; //binary input
dec_D=bin2dec(bin) //decimal output
oct_D=dec2oct(dec_D) //octal output
oct=oct_I + oct_D //final octal output
b = strcat([ oct_I, oct_D ], '.' ) // combining intger and decimal part
disp("The octal equivqlent of 1011.01101 is")
disp(b)
