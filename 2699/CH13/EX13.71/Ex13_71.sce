//EX13_71 Pg-13.43
clc
clear
printf(" Decimal subtraction in 8-4-2-1 BCD using 9''s complement method")
printf("\n\n   79-26 = 53 =")
//given decimal number
x=79;
y=26;
//we separate each of the digit in the decimal number
x1=7;   x2=9;
y1=2;   y2=6;
//first we take 9's complement of the second number
// ie 2 and 6
y1=9-y1        //9's complement of y1
y2=9-y2        //9's complement of y2 

//then we add each of the digit of the number together
//ie x1+y1 and x2+y2
z1=x1+y1;    z2=x2+y2;
//if z2>9(=1001 in binary) then we should add 
//6(=0110 in binary) to z2 and add the carry to z1
if (z2>9) then
   z2=z2+6;
   m=bitget(z2,5)
if (m==1) then
z1=z1+m 
z2=bitset(z2,5,0)
end 
end

//again if z1>9(=1001 in binary) then we should add the 
//6(=0110 in binary) to z1 and add the carry to z2

if (z1>9) then
   z1=z1+6;
   m=bitget(z1,5)
if (m==1) then
z2=z2+m 
z1=bitset(z1,5,0)
end 
end
//decimal to binary conversion
z3=dec2bin(z1)
z4=dec2bin(z2)

printf(" 0%s 00%s ",z3,z4)

printf("\n\n   89-54 = 35 =")
//given decimal number
x=89;
y=54;
//we separate each of the digit in the decimal number
x1=8;   x2=9;
y1=5;   y2=4;
//first we take 9's complement of the second number
// ie 2 and 6
y1=9-y1        //9's complement of y1
y2=9-y2        //9's complement of y2 

//then we add each of the digit of the number together
//ie x1+y1 and x2+y2
z1=x1+y1;    z2=x2+y2;
//if z2>9(=1001 in binary) then we should add 
//6(=0110 in binary) to z2 and add the carry to z1
if (z2>9) then
   z2=z2+6;
   m=bitget(z2,5)
if (m==1) then
z1=z1+m 
z2=bitset(z2,5,0)
end 
end

//again if z1>9(=1001 in binary) then we should add the 
//6(=0110 in binary) to z1 and add the carry to z2

if (z1>9) then
   z1=z1+6;
   m=bitget(z1,5)
if (m==1) then
z2=z2+m 
z1=bitset(z1,5,0)
end 
end
//decimal to binary conversion
z3=dec2bin(z1)
z4=dec2bin(z2)

printf(" 00%s 0%s ",z3,z4)









 
