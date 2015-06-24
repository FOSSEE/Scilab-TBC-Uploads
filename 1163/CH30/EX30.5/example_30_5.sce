clear;
clc;
disp("--------------Example 30.5----------------")
message=['H' 'E' 'L' 'L' 'O' ' ' 'M' 'Y' ' ' 'D' 'E' 'A' 'R'];  // HELLO MY DEAR
l=size(message,'c'); // length of message
ns="";
ciphertext="";
for i=1:l
    if(message(i)==' ')  // remove the spaces
        continue;
    else
        ns=ns+message(i); // form message with no spaces
    end
    
end

block=strsplit(ns,[4 8]);  // split the message into blocks of 4
nz=4-length(block(3));  // number of 'Z's to be added to the last block

for i=1:nz
    block(3)=block(3)+'Z';  // adding 'Z's to the last block
end
f=[];
for i=1:size(block,'r') // for each block 
    c=strsplit(block(i));
    f(1)=c(2); // move the character at position 2 to position 1
    f(2)=c(4); // move the character at position 4 to position 2
    f(3)=c(1); // move the character at position 1 to position 3
    f(4)=c(3); // move the character at position 3 to position 4
    str=f(1)+f(2)+f(3)+f(4); // new block
    ciphertext=ciphertext+str; // form the ciphertext
end
// display the result
printf("The 3 blocks are %s , %s and %s.",block(1),block(2),block(3));
printf("\n\nThe ciphertext is %s .",ciphertext)
