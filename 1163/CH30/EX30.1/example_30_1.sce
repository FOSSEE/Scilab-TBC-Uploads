clear;
clc;
disp("--------------Example 30.1----------------")
plaintext=['H' 'E' 'L' 'L' 'O'];
ciphertext=['K' 'H' 'O' 'O' 'R'];
L1=ciphertext(3); // 1st L's encryption
L2=ciphertext(4); // 2nd L's encryption
// display appropriate result 
if(L1==L2)
    printf("The cipher is probably monoalphabetic because both occurrences of Ls are encrypted as %ss.",L1);
else
    printf("The cipher is polyalphabetic because 1st occurrence of L is encrypted as %s and 2nd occurrence of L is encrypted as %s.",L1,L2);
end

