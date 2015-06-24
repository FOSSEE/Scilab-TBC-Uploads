//addition of two binary numbers//
//example 14.c//
clc
//clears the command window//
clear
// clears //;
//addition of two binary numbers//
//decimal equivalent of the first binary number//
p =1;
// initialising //
q =1;
z =0;
b =0;
w =0;
f =0;
//bin=1st input ( Enter the binary no to be converted to its decimal equivalent : )
//accepting the binary input from user//
bin =1100.011;
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
disp ( 'The Decimal equivalent of the first binary number given is '); 
disp (x1);
//to find decimal equivalent of second binary number//
//bin=2nd input ( Enter the binary no to be converted to its decimal equivalent : )
p =1;
// initialising //
q =1;
z =0;
b =0;
w =0;
f =0;
//accepting the binary input from user//
bin =1011.011;
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
disp ( 'The Decimal equivalent of the second binary number given is ' ); 
disp (x2);
res=x1+x2;//addition//
q=0;//binary conversion of the decimal answer begins here//
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
disp('the addition of two numbers give:')
disp(k);//displaying the result//
