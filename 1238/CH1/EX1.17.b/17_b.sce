//division of two binary numbers//
//example 17.b//
clc
//clears the command window//
clear
// clears //;//decimal equivalent of the first binary number//
p =1;
// initialising //
q =1;
z =0;
b =0;
w =0;
f =0;
//bin= input ( Enter the binary no to be converted to its decimal equivalent : )
//accepting the binary input from user//
bin =11.11;
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
x1=f+z; 
p =1;
// initialising //
q =1;
z =0;
b =0;
w =0;
f =0;
//bin=2nd input ( Enter the binary no to be converted to its decimal equivalent : )
//accepting the binary input from user//
bin =.101;
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
x2=f+z; 
res=x1/x2;//division//
q=0;
b=0;
s=0;
//enter the decimal number to be converted//
a=res;
d=modulo(a,1);//separating decimal and integer part//
a=floor(a);//removing decimal part//
while (a>0)
//taking integer part into a matrix and converting to equivalent binary//
x=modulo(a,2)
b=b+(10^q)*x
a=a/2
a=floor(a)
q=q+1
    end
 for i=1:10
 //for values after decimal that should be converted to binary//
 d=d*2
 q=floor(d)
 s=s+q/(10^i);
 if d>=1 then
    d=d-1   
  end
 end
k=b+s;
disp('the division of two numbers give:')
disp(k);//displaying the result//


