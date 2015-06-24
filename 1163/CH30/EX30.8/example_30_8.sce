clear;
clc;
disp("--------------Example 30.8----------------")
p=397;
q=401;
n=p*q; // formula
phi=(p-1)*(q-1); // formula
e=343; 
d=1;  // not actual 'd' value; it has to be computed
message=['N' 'O']; // NO
t=1;
alphabet=['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z'];
// Encryption process by Ted
while t==1 do  // compute d such that d*e = 1 mod n
    if(modulo(e*d,phi)== 1)
        t=0;
    else
        d=d+1;
    end
end
l=size(message,'c'); // length of the message
c=[];
for k=1:l // determine the code for each character in the message
    for i=1:26
        if(message(k)==alphabet(i))
            c(k)=i-1;  // compute the code
            break;
        end
    end
end
plaintext=c(1)*100+c(2); // form the plaintext

//C=modulo((plaintext)^e,n) -- formula to find the ciphertext
ciphertext=33677; // from calculation
printf("\nThe plaintext is %d and the ciphertext sent by Ted is %d.\n",plaintext,ciphertext); // display the result

//  Decryption by Jennifer

//P=modulo((ciphertext)^d,n);  -- formula to find the plaintext
P=1314; // the plaintext that is computed
// separate the codes for each character
c(2)=modulo(P,100);
c(1)=floor(P/100);
d_message="";  // deciphered message
for k=1:l // find the corresponding letter for each code
    for i=1:26
        if(i==c(k)+1)
            d_message=d_message+alphabet(i);  // form the deciphered message
        end
        
    end
end
printf("\nJennifer deciphers the ciphertext %d as the plaintext %d and decodes it as the message %s.",ciphertext,P,d_message) // display the result
