//9.16
clc;
p =1;
 q =1;
 z =0;
 b =0;
 w =0;
 f =0;
bin =11001.001011; // binary input
d = modulo (bin ,1) ;
d= d *10^10;
 a = floor ( bin ) ;
 while (a >0)
 r = modulo (a ,10) ;
 b(1,q) = r ;
 a=a /10;
 a= floor ( a ) ;
 q = q +1;
 end
 for m =1: q -1
 c=m -1;
 f=f+b(1,m) *(2^ c);
 end
 while (d >0)
 e = modulo (d ,2)
 w (1 , p ) = e
 d = d /10;
 d = floor ( d )
 p = p +1;
 end
 for n =1: p -1
 z = z + w (1 , n ) *(0.5) ^(11 - n ) ;
 end
 z = z *10000;
 z = round ( z ) ;
 z = z /10000;
 x=f+z;
 printf("Equivalent decimal number=%.6f",x)