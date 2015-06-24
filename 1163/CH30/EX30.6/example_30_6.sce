clear;
clc;
disp("--------------Example 30.6----------------")
ciphertext="ELHLMDOYAZER";
block=strsplit(ciphertext,[4 8]);  // split into blocks

f=[];
for i=1:size(block,'r') // for each block 
    c=strsplit(block(i));
    f(2)=c(1); // move the character at position 1 to position 2
    f(4)=c(2); // move the character at position 2 to position 4
    f(1)=c(3); // move the character at position 3 to position 1
    f(3)=c(4); // move the character at position 4 to position 3
    str=f(1)+f(2)+f(3)+f(4); 
    block(i)=str;// new block
end
printf("The 3 blocks are %s , %s and %s.",block(1),block(2),block(3));
nz=0;
b3=strsplit(block(3));
for i=1:4
    if(b3(i)=='Z');
        nz=nz+1; // number of 'Z's in the last block
    end
    
end

  f=strsplit(block(3),size(b3,'r')-nz);  // remove the 'Z's in the last block
block(3)=f(1);  // new last block

text=block(1)+block(2)+block(3);
sp=strsplit(text,[5 7]);
plaintext=sp(1)+" "+sp(2)+" "+sp(3); // add the spaces
printf("\n\nThe message is %s.",plaintext) // display the result
