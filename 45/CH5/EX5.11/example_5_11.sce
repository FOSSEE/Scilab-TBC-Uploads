//chapter 5
//Example 5.11
//Q.convert decimal numbers to its hexadecimal and binary equivalent ?
//solution :
clc                                     //clears the command window
clear                                    //clears the variables 
q=0;
b=0;
a=input("Enter the decimal no:")            //Enter the decimal nuber 
format('v',18)                              //increasing the precision to 18
a=floor(a);
h=dec2hex(a);
while(a>0)                                   // converting to binary 
    x=modulo(a,2);
    b= b + (10^q)*x;
    a=a/2;
    a=floor(a);
    q=q+1; 
end
printf("The hexadecimal equivalent is = %s\n",h)
                                           //displaying the results 
printf("The binary equivalent is = %f",b)
