//binary to decimal conversion//
//example 3//
clc
//clears the command window//
clear
// clears //
p =1;
// initialising //
q =1;
z =0;
b =0;
w =0;
f =0;
//bin= input ( Enter the binary no to be converted to its decimal equivalent : )
//accepting the binary input from user//
bin =1100.11;
d =modulo(bin ,1);
//separating the decimal part and the integer part//
d=d *10^10;
a = floor (bin) ;
//removing the decimal part//
while (a >0)
//Loop to take the binary bits of integer into a matrix //
r = modulo (a ,10) ; 
b(1,q) = r ; 
a=a /10; 
a= floor ( a ) ; 
q=q +1; 
end 
for m =1: q -1 
// multipliying the bits of integer position values and adding// 
c=m -1; 
f=f+b(1,m) *(2^ c);
end 
while (d >0) 
// Loop to take the binary bits of decimal into a matrix//
e = modulo (d ,2)
w(1 ,p)=e 
d = d /10;
d= floor (d)
p=p +1; 
end 
for n =1: p -1
// multipliying the bits of decimal with their position values and adding// 
z=z+w(1 ,n)*(0.5) ^(11 -n); 
end 
z = z *10000; 
//rounding of to 4 decimal values// 
z= round (z);
z = z /10000; 
x=f+z; 
disp (x)
//result is displayed// 
