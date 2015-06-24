clear;
clc;
disp("--------------Example 10.10---------------")
// function to check if given scheme is a linear block code
function[]=check_linearcode (c1,c2,c3,c4)
    if(bitxor(c1,c2)==c1|bitxor(c1,c2)==c2|bitxor(c1,c2)==c3|bitxor(c1,c2)==c4)
        if(bitxor(c1,c3)==c1|bitxor(c1,c3)==c2|bitxor(c1,c3)==c3|bitxor(c1,c3)==c4)
            if(bitxor(c1,c4)==c1|bitxor(c1,c4)==c2|bitxor(c1,c4)==c3|bitxor(c1,c4)==c4)
                if(bitxor(c2,c3)==c1|bitxor(c2,c3)==c2|bitxor(c2,c3)==c3|bitxor(c2,c3)==c4)
                    if(bitxor(c2,c4)==c1|bitxor(c2,c4)==c2|bitxor(c2,c4)==c3|bitxor(c2,c4)==c4)
                        if(bitxor(c3,c4)==c1|bitxor(c3,c4)==c2|bitxor(c3,c4)==c3|bitxor(c3,c4)==c4)
                            printf("\nThis scheme is a linear block code because the result of XORing any codeword with any other codeword is a valid codeword.\n");
                        else
                            printf("\nThis scheme is not a linear block code because the result of XORing any codewordwith any other codeword is not a valid codeword.\n");
                        end
                    else
                        printf("\nThis scheme is not a linear block code because the result of XORing any codewordwith any other codeword is not a valid codeword.\n");
                    end
                else
                    printf("\nThis scheme is not a linear block code because the result of XORing any codewordwith any other codeword is not a valid codeword.\n");
                end
            else
                printf("\nThis scheme is not a linear block code because the result of XORing any codewordwith any other codeword is not a valid codeword.\n");
            end
        else
            printf("\nThis scheme is not a linear block code because the result of XORing any codewordwith any other codeword is not a valid codeword.\n");
        end
    else
        printf("\nThis scheme is not a linear block code because the result of XORing any codewordwith any other codeword is not a valid codeword.\n");
    end
endfunction

// 1) Table 10.1
c1=[0 0 0];
c2=[0 1 1];
c3=[1 0 1];
c4=[1 1 0];
printf("\n1)");
check_linearcode(c1,c2,c3,c4); //calling the function

// 2) Table 10.2
c1=[0 0 0 0 0];
c2=[0 1 0 1 1];
c3=[1 0 1 0 1];
c4=[1 1 1 1 0];
printf("\n2)");
check_linearcode(c1,c2,c3,c4);  //calling the function
                
