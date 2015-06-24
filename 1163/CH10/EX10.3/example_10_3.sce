clear;
clc;
disp("--------------Example 10.3---------------")
table=["Datawords","Codewords";"00","00000";"01","01011";"10","10101";"11","11110"];
codewords=["00000","01011","10101","11110"];
disp(table); // display the table
dataword="01";
codeword="01011";
corrupt_codeword="01001";
printf("\nThe dataword is %s. The sender consults the table to create the codeword %s.\nThe codeword is corrupted during transmission, and %s is received (error in the second bit from the right).\nFirst, the receiver finds that the received codeword is not in the table. This means an error has occurred. (Detection must come before correction.)\nThe receiver, assuming that there is only 1 bit corrupted, uses the following strategy to guess the correct dataword.\n",dataword,codeword,corrupt_codeword); // display result
for i=1:4 // check for each codeword
    bit=strsplit(codewords(i));
    r=strsplit(corrupt_codeword);
    count=0;
    for k=1:5
        if(bit(k)==r(k)) // check each bit 
            continue;
        else
            count=count+1; // udate the count of errorenous bits
        end
    end
    if(count>1) // if more than 1 bit is errorenous
        continue;
    else
        correct_codeword=codewords(i); // the correct codeword determined
        break;
    end
end
printf("\n1. Comparing the received codeword with the first codeword in the table (%s versus 00000),the receiver decides\nthat the first codeword is not the one that was sent because there are two different bits.\n\n2. By the same reasoning, the original codeword cannot be the third or fourth one in the table.\n\n3. The original codeword must be the second one in the table because this is the only one that differs from the received codeword by 1 bit.\nThe receiver replaces %s with %s and consults the table to find the dataword %s.",corrupt_codeword,corrupt_codeword,correct_codeword,dataword); // display result
