
//Example XOR operations

A  = bin2dec("101")
printf("A: %s\n\n",dec2bin(A))
B  = bin2dec("110")
printf("B: %s\n\n",dec2bin(B))

C = bitxor(A,B)
printf("C: %3s\n\n",dec2bin(C))

disp("C XOR A")
disp(dec2bin(bitxor(C,A)))

disp("C XOR B")
disp(dec2bin(bitxor(C,B)))
