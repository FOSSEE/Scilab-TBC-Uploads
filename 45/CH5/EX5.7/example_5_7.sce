//Example 5.7
clc                                                                     //clears the command window 
clear                                                                   //clears all the variables 
q=1;
b=0;
f=0;
bin=input("Enter the 8-bit binary address :");                            // Taking the input binary bits from the user 
a=floor(bin)
while(a>0)                                                                //Loop to take the binary bits in to a matrix(array)
    r=modulo(a,10);
    b(1,q)=r;
    a=a/10;
    a=floor(a);
    q=q+1;
end
for m=1:q-1                                                                // converrting to decimal
    c=m-1;
    f = f + b(1,m)*(2^c);
end
c=dec2hex(f);
printf("The hexadecimal equivalent of the given binary number is : %s",c);             //displaying the value