//EX13_70 Pg-13.41
clc
clear
printf("Decimal addition in 8-4-2-1 BCD ")
printf("\n\n   24+18 = 42 =")
//given decimal number
x=24;
y=18;
//we separate each of the digit in the decimal number
x1=2;   x2=4;
y1=1;   y2=8;
//then we add each of the digit together 
//ie x1+y1 and x2+y2
z1=x1+y1;    z2=x2+y2;

a=9;               //since 9_(decimal)=1001_(binary)
if (z1>a) 
  z1=z1+6;          //since 6_(decimal)=0110_(binary)
end

if (z2>a) then
   z2=z2+6;
//if any carry is present in z2 
//we should add the carry with z1    
m=bitget(z2,5)
if (m==1) then
z1=z1+m 
z2=bitset(z2,5,0)  
end 
end
z1=dec2bin(z1)
z2=dec2bin(z2)
printf(" 0%s 00%s",z1,z2)

printf("\n\n   48+58 = 106 =")
//given decimal number
x=48;
y=58;
//we separate each of the digit in the decimal number
x1=4;   x2=8;   
y1=5;   y2=8;   
//then we add each of the digit together 
//ie x1+y1 and x2+y2  
z3=0;   z1=x1+y1;    z2=x2+y2;    

//if there is any carry is present in z2
// during addition then it is added to z1
m=bitget(z2,5)
if (m==1) then
z1=z1+m; 
//if z2 is greater than 9(=1001 in binary )
//then we should add 6(=0110 in binary )
if (z2>9) then        
z2=bitset(z2,5,0)
z2=z2+6;   
end
end 

//agian if z1 is greater than 9(=1001 in binary ) then 6(=0110 inbinary) is added
if (z1>9) then        
z1=z1+6;
// if any carry is present is present in z1 then we should add the carry with z3
m=bitget(z1,5)
if (m==1) then
z3=z3+m
z1=bitset(z1,5,0)   
end  
end
//conversion into binary
z4=dec2bin(z3)
z5=dec2bin(z1)
z6=dec2bin(z2)
printf(" 000%s 000%s 0%s",z4,z5,z6)

printf("\n\n   175+326 = 501 =")
//given decimal number
x=175;
y=326;
//we separate each of the digit in the decimal number
x1=1;   x2=7;   x3=5;
y1=3;   y2=2;   y3=6
//then we add each of the digit together 
//ie x1+y1 and x2+y2  x3+y3
z1=x1+y1;    z2=x2+y2;   z3=x3+y3;
//if z1,z2,z3>9(=1001 in binary ) then 6(=0110 inbinary) is added
if (z1>9) then
z1=z1+6;
end
if (z2>9) then
z2=z2+6;
end
if (z3>9) then
z3=z3+6;
end
//if there is any carry is present in z3 during addition then it is added 
//to z2 and in turn is there is any carry in z2 it is added to z1
m=bitget(z3,5)
if (m==1) then
z2=z2+m 
if (z3>9) then
z3=bitset(z3,5,0)  
end
end 
//if z2  is greater than 9 then we add 6 to z2
if (z2>9) then
z2=z2+6;
end
//if there is any carry present in z2 during addition then it is added to z1 
m=bitget(z2,5)
if (m==1) then
z1=z1+m 
if (z2>9) then
z2=bitset(z2,5,0)  
end
end 
//conversion into binary
z4=dec2bin(z1)
z5=dec2bin(z2)
z6=dec2bin(z3)
printf("   0%s 000%s 000%s",z4,z5,z6)

printf("\n\n   589+199 = 788 =")
//given decimal number
x=589;
y=199;
//we separate each of the digit in the decimal number
x1=5;   x2=8;   x3=9;
y1=1;   y2=9;   y3=9;
//then we add each of the digit together 
//ie x1+y1 and x2+y2  x3+y3
z1=x1+y1;    z2=x2+y2;   z3=x3+y3;

//if there is any carry is present in z3 during addition then it is added 
//to z2 and in turn is there is any carry in z2 it is added to z1
//for z2
m=bitget(z2,5)
if (m==1) then
z1=z1+m 
//if z2 is greater than 9(=1001 in binary )
//then we should add 6(=0110 in binary )
if (z2>9) then        
z2=bitset(z2,5,0)
z2=z2+6;  
end
end 

//for z3
m=bitget(z3,5)
if (m==1) then
z2=z2+m 
//if z3 is greater than 9(=1001 in binary )
//then we should add 6(=0110 in binary )
if (z3>9) then
z3=bitset(z3,5,0)  
z3=z3+6;
end
end 

//conversion into binary
z4=dec2bin(z1)
z5=dec2bin(z2)
z6=dec2bin(z3)
printf(" 0%s %s %s",z4,z5,z6)
