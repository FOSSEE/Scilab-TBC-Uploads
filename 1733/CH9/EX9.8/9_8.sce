//9.8
clc;
a='0001 1111';
disp(a)
disp('Since the MSB is 0 so this is a positive number and its 2 s complement representation is')
b=bin2dec(a);
disp(b)
a='1110 0101';
disp(a)
disp('Since the MSB is 1 so this is a negative number and its 2 s complement representation is')
c=bin2dec(a);
xc= bitcmp (c ,8);
b=xc+1;
disp(b)
a='1111 0111';
disp(a)
disp('Since the MSB is 1 so this is a negative number and its 2 s complement representation is')
c=bin2dec(a);
xc= bitcmp (c ,8);
b=xc+1;
disp(b)