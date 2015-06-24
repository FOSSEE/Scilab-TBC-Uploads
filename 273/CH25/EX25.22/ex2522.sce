clc;//clears the command window 
clear;//clears all the variables 
//example 25.22
//decimal to hexadecimal conversion
format('v',4);//making the default precision to 8 significant digits
dec=379.54;//given decimal
w=1;i=1;

temp1=floor(dec);//separating integer part from the given number
temp2=modulo(dec,1);//separating decimal part from the given number
x=dec2hex(temp1);//hexadecimal equivalent of integer part
s=0;

while(temp2~=0) //storing each decimal digit in vector for convenience
    temp2=temp2*16;
    q(w)=floor(temp2);
    s=s+1;//counter of a
    a(w)=dec2hex(q(w));
    w=w+1;
    temp2=modulo(temp2,1);
end
f=a(1);
for i=2:s
    f=f+a(i);
end
b='.';//for concatenating to get the decimal part of hexadecimal 
hex=x+b+f;//concatenating integer and decimal part
disp(hex,'hexadecimal equivalent is');

