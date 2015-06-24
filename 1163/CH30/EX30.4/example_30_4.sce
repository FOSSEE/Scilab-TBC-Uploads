clear;
clc;
disp("--------------Example 30.4----------------")
ciphertext=['W' 'T' 'A' 'A' 'D'];
key=15; // shift up key
plaintext="";
alphabet=['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z'];

for k=1:5  // decrypt each character in the ciphertext
    for i=1:26
        if(ciphertext(k)==alphabet(i))  // find the index of the character in the alphabet array
            break;
        end
    end
    temp=i-15; // shift up by 15 towards the beginning of the alphabet
    if(temp < = 0)
        a=26+temp;
        if(a>26)
            a=modulo(a,26); // wrapping around the alphabet
        end

    else
        a=temp;
    end
    plaintext=plaintext+alphabet(a); // form the plain text
end
printf("The plain text is %s.",plaintext);  // display the result
