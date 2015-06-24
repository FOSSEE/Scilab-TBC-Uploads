// page no 321
// example no 10.2
// ADDITION OF PACKED BCD NUMBERS
clc;
a=77;
b=48;
x=modulo(a,10);
y=modulo(b,10);
z=x+y;
if z>9 then
    f=z+6;
   
    printf('After addition BCD1 is: ')
    disp(dec2bin(f));
    printf('MSB of this sequence is the carry generated after addition. \n \n')
else
    printf('After addition BCD1 is: ')
    disp(z);
end
x=a/10;
x=floor(x);
y=b/10;
y=floor(y);
z=x+y;
if z>9 then
    f=z+6;
    f=f+1;  // this 1 is the carry of BCD1.
    printf('After addition BCD2 is: ')
    disp(dec2bin(f));
    printf('MSB of this sequence is the carry generated after addition.')
else
    printf('After addition BCD1 is: ')
    disp(z);
end
printf('\n \n BCD1 :  0101 \n \n');
printf('BCD2:  0010')
