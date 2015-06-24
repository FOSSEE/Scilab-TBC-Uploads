//Example No. 3_09
//Binary representation
//Pg No. 51
clear ;close ;clc ;

n = -32768
compl_32767 = dec2bin(bitcmp(abs(n)-1,16) + 1)
disp(compl_32767,'binary equivalent of -32767 is ')

n_1 = -1
dcomp = bitcmp(1,16)
compl_1 = dec2bin(dcomp+1)
disp(compl_1,'binary equivalent of -1 is ')
compl_32767_code = str2code(compl_32767)
compl_1_code = str2code(compl_1)
summ(1) = 1 //since -32768 is a negative number
c = 0
for i = 16:-1:2
    summ(i) = compl_32767_code(i) + compl_1_code(i)+c
    if summ(i) == 2 then
        summ(i) = 0
        c = 1
    else 
        c = 0
    end   
end
binfinal = strcat(string(summ))
disp(binfinal,'Binary equivalent of -32768 in a 16 bit word is ') 
