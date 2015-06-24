clear;
clc;
disp("--------------Example 30.2----------------")
plaintext=['H' 'E' 'L' 'L' 'O'];
ciphertext=['A' 'B' 'N' 'Z' 'F'];
L1=ciphertext(3); // 1st L's encryption
L2=ciphertext(4); // 2nd L's encryption
// display appropriate result
if(L1==L2)
    printf("The cipher is probably monoalphabetic because both occurrences of Ls are encrypted as %ss.",L1);
else
    printf("The cipher is not monoalphabetic because each occurrence of L is encrypted by a different character. The first L is encrypted as %s; the second as %s.",L1,L2);
end
