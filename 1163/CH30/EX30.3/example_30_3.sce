clear;
clc;
disp("--------------Example 30.3----------------")
message=['H' 'E' 'L' 'L' 'O'];
key=15; // shift down key
alphabet=['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z'];
ciphertext="";

for k=1:5 // encrypt each character in the message
    for i=1:26
        if(message(k)==alphabet(i)) // find the index of the character in the alphabet array
            break;
        end
    end
    temp=i+15;  // shift down by 15 towards end of the alphabet
    if(temp > = 26)
        a=modulo(temp,26); // wrap around thhe alphabet if its greater than 26
    else
        a=temp;
    end
    ciphertext=ciphertext+alphabet(a); // form the ciphertext
end
printf("The cipher text is %s.",ciphertext); // display the result
