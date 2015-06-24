clear;
clc;
disp("--------------Example 10.2---------------")
k=2;
n=3;
table=["Datawords","Codewords";"00","000";"01","011";"10","101";"11","110"];
disp(table) // display the table
dataword="01";
codeword="011";
printf("\nAssume the sender encodes the dataword 01 as 011 and sends it to the receiver. Consider the following cases:\n");
function[]=case_func(codeword,dataword) // function to display appropriate result
    select codeword
    case "011"
        printf("\n1. The receiver receives %s. It is a valid codeword. The receiver extracts the dataword %s from it.",codeword,dataword);
    case "111"
        printf("\n\n2. The codeword is corrupted during transmission, and %s is received (the leftmost bit is corrupted).\nThis is not a valid codeword and is discarded.",codeword);
    case "000"
        printf("\n\n3. The codeword is corrupted during transmission, and %s is received (the right two bits are corrupted).\nThis is a valid codeword. The receiver incorrectly extracts the dataword 00. Two corrupted bits have made the error undetectable.",codeword);
    end
endfunction
funcprot(0);
// case 1
case_func(codeword,dataword); //calling the function
// case 2
codeword="111";
case_func(codeword,dataword); // calling the function
// case 3
codeword="000";
case_func(codeword,dataword); // calling the function