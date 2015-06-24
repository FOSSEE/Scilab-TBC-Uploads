// exmple 6.5(b)(i)
clc ;
clear ;
// a=input (”enter the first 8 bit number :”) ;
// b=input (”enter the second 8 bit number : ” ) ;
   a =00011000  ; 
//taking given inputs//
   b =00111010 ;
   for i =1:8
         a1 ( i ) = modulo (a ,10) ;
         a = a /10;
         a = round ( a ) ;
         b1 ( i ) = modulo (b ,10) ;
         b = b /10;
         b = round ( b ) ;
   end
   car (1) =0;
   for i =1:8
//adding both the inputs (binary addition)//
c1 ( i ) = car ( i ) + a1 ( i ) + b1 ( i ) ;
if c1 ( i ) == 2 then
car ( i +1) = 1;

     c1 ( i ) =0;
elseif c1 ( i ) ==3 then
      car ( i +1) = 1;
     c1 ( i ) =1;
else
     car ( i +1) =0;
end
end
c1 (9) = car (9) ;
re =0;
format ( 'v' ,18) ;
for i =1:9
       re = re +( c1 ( i ) *(10^( i -1) ) )
end
printf ( ' The sum of given two binary numbers is %d\n ', re ) ;
q =1;
b =0;
f =0;
a = re ;
while (a >0)
//converting the result to a hexadecimal no//
       r = modulo (a ,10) ;
       b (1 , q ) = r ;
       a = a /10;
       a = floor ( a ) ;
       q = q +1;
end
for m =1: q -1
         c =m -1;
       f = f + b (1 , m ) *(2^ c ) ;
end
hex = dec2hex ( f ) ;
printf ('The sum in hexadecimal notation is %s \n' ,hex ) ;
disp('the sum in decimal form is:')
disp(f)
//displaying result//