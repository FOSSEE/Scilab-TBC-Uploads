// 9.12
clc;
q =0;
b =0;
s =0;
a =0.6875;   // accepting the decimal input from user 
d = modulo (a ,1) ;
a = floor ( a ) ;
while (a >0)
x = modulo (a ,2) ;
b = b + (10^ q ) * x ;
 a = a /2;
 a = floor ( a ) ;
 q = q +1;
 end
 for i =1:10
 // for fractional part
d = d *2;
 q = floor ( d ) ;
 s = s + q /(10^ i ) ;
 if d >=1 then
 d =d -1;
 end
end
m=b+s;
printf("Equivalent binary number=%.4f",m)
