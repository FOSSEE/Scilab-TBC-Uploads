clear;
clc;
disp("--------------Example 10.12---------------")
dataword=1011;
function[]= display (codeword) // function to display the result according to the codeword recieved at the reciever
    select codeword
    case 10111
        printf("\n1)No error occurs;the received codeword is %d.The syndrome is O. The dataword 1011 is created.\n",codeword);
    case 10011
        printf("\n2)One single-bit error changes a1.The received codeword is %d.The syndrome is 1.No dataword is created.\n",codeword);
    case 10110
        printf("\n3)One single-bit error changes r0.The received codeword is %d.The syndrome is 1.No dataword is created.\nNote that although none of the dataword bits are corrupted, no dataword is created because the code is not\nsophisticated enough to show the position of the corrupted bit.\n",codeword);
    case 00110
        printf("\n4)An error changes r0 and a second error changes a3.The received codeword is 00110.The syndrome is 0.\nThe dataword 0011 is created at the receiver. Note that here the dataword is wrongly created due to the syndrome value.\nThe simple parity-check decoder cannot detect an even number of errors. The errors cancel each other out and give the syndrome a value of 0.\n");
    case 01011
        printf("\n5)Three bits-a3, a2, and a1 are changed by errors.The received codeword is 01011.The syndrome is 1.\nThe dataword is not created. This shows that the simple parity check, guaranteed to detect one single error,\ncan also find any odd number of errors.\n");
    end
endfunction

//codeword = 10111
codeword = 10111;
display(10111); //calling the function 
//codeword = 10011
codeword = 10011;
display(10011); //calling the function 
//codeword = 10110
codeword = 10110;
display(10110); //calling the function 
//codeword = 00110
codeword = 00110;
display(00110); //calling the function 
//codeword = 01011
codeword = 01011;
display(01011); //calling the function 
funcprot(0);
