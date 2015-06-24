//Example 5.9
clc                                     //clears the command window
clear                                    //clears the variables 
q=0;
b=0;
//a=input("enter the decimal no:")
a=65535;                                    // giving the value specified in the problem 
temp =a;
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
printf("Given decimal number is : %d\n",temp)
printf('The hexadecimal equivalent is = %s\n',h);                                               //displaying the results 
printf('The binary equivalent is = %f',b );