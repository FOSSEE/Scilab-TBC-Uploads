clear;
clc;
disp("--------------Example 10.13---------------")
function[codeword]=generate_codeword (dataword)  // functionto generate the codeword at the sender
    r0=bitxor(bitxor(matrix(dataword(4),1,1),matrix(dataword(3),1,1)),matrix(dataword(2),1,1));  // r0=a0+a1+a2
    s1=bitxor(bitxor(matrix(dataword(3),1,1),matrix(dataword(2),1,1)),matrix(dataword(1),1,1)); // s1=a1+a2+a3
    r2=bitxor(bitxor(matrix(dataword(3),1,1),matrix(dataword(4),1,1)),matrix(dataword(1),1,1)); // r2=a0+a1+a3
    codeword=string(dataword(1))+string(dataword(2))+string(dataword(3))+string(dataword(4))+string(r2)+string(s1)+string(r0); // form the codeword
endfunction
function[syndrome] = generate_syndrome(codeword_recieved)  // function to generate syndrome at the reciever
    s0=bitxor(bitxor(matrix(codeword_recieved(7),1,1),matrix(codeword_recieved(2),1,1)),bitxor(matrix(codeword_recieved(3),1,1),matrix(codeword_recieved(4),1,1)));  // s0=b2+b1+b0+q0
    s1=bitxor(bitxor(matrix(codeword_recieved(6),1,1),matrix(codeword_recieved(1),1,1)),bitxor(matrix(codeword_recieved(2),1,1),matrix(codeword_recieved(3),1,1)));  // s0=b3+b2+b1+q1
    s2=bitxor(bitxor(matrix(codeword_recieved(5),1,1),matrix(codeword_recieved(4),1,1)),bitxor(matrix(codeword_recieved(3),1,1),matrix(codeword_recieved(1),1,1)));  // s0=b3+b1+b0+q2
    syndrome=string(s2)+string(s1)+string(s0); // the syndrome formed
endfunction

function[]=find_error (syndrome,dataword,codeword,codeword_recieved) // functin to find the error bit and display the final corrected data word
    select syndrome
    case "000"
        dw=string(dataword(1))+string(dataword(2))+string(dataword(3))+string(dataword(4));
        cw=string(codeword_recieved(1))+string(codeword_recieved(2))+string(codeword_recieved(3))+string(codeword_recieved(4))+string(codeword_recieved(5))+string(codeword_recieved(6))+string(codeword_recieved(7));
        printf("The dataword %s becomes the codeword %s. The codeword %s is received.The syndrome is %s (no error), the final dataword is %s.",dw,codeword,cw,syndrome,dw);
    case "001"
        dw=string(dataword(1))+string(dataword(2))+string(dataword(3))+string(dataword(4));
        cw=string(codeword_recieved(1))+string(codeword_recieved(2))+string(codeword_recieved(3))+string(codeword_recieved(4))+string(codeword_recieved(5))+string(codeword_recieved(6))+string(codeword_recieved(7));
        error_bit="q0";
        printf("The dataword %s becomes the codeword %s. The codeword %s is received. The syndrome is %s.\n%s is the error. After flipping %s, the final dataword is %s.",dw,codeword,cw,syndrome,error_bit,error_bit,dw);
    case "010"
        dw=string(dataword(1))+string(dataword(2))+string(dataword(3))+string(dataword(4));
        cw=string(codeword_recieved(1))+string(codeword_recieved(2))+string(codeword_recieved(3))+string(codeword_recieved(4))+string(codeword_recieved(5))+string(codeword_recieved(6))+string(codeword_recieved(7));
        error_bit="q1";
        printf("The dataword %s becomes the codeword %s. The codeword %s is received. The syndrome is %s.\n%s is the error. After flipping %s, the final dataword is %s.",dw,codeword,cw,syndrome,error_bit,error_bit,dw);
    case "011"
        dw=string(dataword(1))+string(dataword(2))+string(dataword(3))+string(dataword(4));
        cw=string(codeword_recieved(1))+string(codeword_recieved(2))+string(codeword_recieved(3))+string(codeword_recieved(4))+string(codeword_recieved(5))+string(codeword_recieved(6))+string(codeword_recieved(7));
        error_bit="b2";
        fdw=string(codeword_recieved(1))+string(bitcmp(codeword_recieved(2),1))+string(codeword_recieved(3))+string(codeword_recieved(4)); // corrected dataword
        printf("The dataword %s becomes the codeword %s. The codeword %s is received. The syndrome is %s.\n%s is the error. After flipping %s, the final dataword is %s.",dw,codeword,cw,syndrome,error_bit,error_bit,fdw);
    case "100"
        dw=string(dataword(1))+string(dataword(2))+string(dataword(3))+string(dataword(4));
        cw=string(codeword_recieved(1))+string(codeword_recieved(2))+string(codeword_recieved(3))+string(codeword_recieved(4))+string(codeword_recieved(5))+string(codeword_recieved(6))+string(codeword_recieved(7));
        error_bit="q2";
        printf("The dataword %s becomes the codeword %s. The codeword %s is received. The syndrome is %s.\n%s is the error. After flipping %s, the final dataword is %s.",dw,codeword,cw,syndrome,error_bit,error_bit,dw);
    case "101"
        dw=string(dataword(1))+string(dataword(2))+string(dataword(3))+string(dataword(4));
        cw=string(codeword_recieved(1))+string(codeword_recieved(2))+string(codeword_recieved(3))+string(codeword_recieved(4))+string(codeword_recieved(5))+string(codeword_recieved(6))+string(codeword_recieved(7));
        error_bit="b0";
        fdw=string(codeword_recieved(1))+string(codeword_recieved(2))+string(codeword_recieved(3))+string(bitcmp(codeword_recieved(4),1)); // corrected dataword
        printf("The dataword %s becomes the codeword %s. The codeword %s is received. The syndrome is %s.\n%s is the error. After flipping %s, the final dataword is %s.",dw,codeword,cw,syndrome,error_bit,error_bit,fdw);
    case "110"
        dw=string(dataword(1))+string(dataword(2))+string(dataword(3))+string(dataword(4));
        cw=string(codeword_recieved(1))+string(codeword_recieved(2))+string(codeword_recieved(3))+string(codeword_recieved(4))+string(codeword_recieved(5))+string(codeword_recieved(6))+string(codeword_recieved(7));
        error_bit="b3";
        fdw=string(bitcmp(codeword_recieved(1),1))+string(codeword_recieved(2))+string(codeword_recieved(3))+string(codeword_recieved(4)); // corrected dataword
        printf("The dataword %s becomes the codeword %s. The codeword %s is received. The syndrome is %s.\n%s is the error. After flipping %s, the final dataword is %s.",dw,codeword,cw,syndrome,error_bit,error_bit,fdw);
    case "111"
        dw=string(dataword(1))+string(dataword(2))+string(dataword(3))+string(dataword(4));
        cw=string(codeword_recieved(1))+string(codeword_recieved(2))+string(codeword_recieved(3))+string(codeword_recieved(4))+string(codeword_recieved(5))+string(codeword_recieved(6))+string(codeword_recieved(7));
        error_bit="b1";
        fdw=string(codeword_recieved(1))+string(codeword_recieved(2))+string(bitcmp(codeword_recieved(3),1))+string(codeword_recieved(4)); // corrected dataword
        printf("The dataword %s becomes the codeword %s. The codeword %s is received. The syndrome is %s.\n%s is the error. After flipping %s, the final dataword is %s.",dw,codeword,cw,syndrome,error_bit,error_bit,fdw);
    end
endfunction

// 1)
dataword=[0 1 0 0];
codeword=generate_codeword(dataword); // calling the function
codeword_recieved=[0 1 0 0 0 1 1];
syndrome=generate_syndrome(codeword_recieved) // calling the function
printf("\n1)");
find_error(syndrome,dataword,codeword,codeword_recieved); // calling the function

// 2)
dataword=[0 1 1 1];
codeword=generate_codeword(dataword); // calling the function
codeword_recieved=[0 0 1 1 0 0 1];
syndrome=generate_syndrome(codeword_recieved) // calling the function
printf("\n\n2)");
find_error(syndrome,dataword,codeword,codeword_recieved); // calling the function

// 3)
dataword=[1 1 0 1];
codeword=generate_codeword(dataword); // calling the function
codeword_recieved=[0 0 0 1 0 0 0];
syndrome=generate_syndrome(codeword_recieved) // calling the function
printf("\n\n3)");
find_error(syndrome,dataword,codeword,codeword_recieved); // calling the function
printf("\nThis is the wrong dataword. This shows that Hamming code cannot correct two errors."); 
