// d e t e rmi n i n g c r i t i c a l v a l u e o f K
s=%s
syms K
m=s ^3+6.5* s ^2+10* s +10* K
cof_a_0 = coeffs (m, ' s ' ,0);
cof_a_1 = coeffs (m, ' s ' ,1);
cof_a_2 = coeffs (m, ' s ' ,2);
cof_a_3 = coeffs (m, ' s ' ,3);
 r=[ cof_a_0 cof_a_1 cof_a_2 cof_a_3 ]
 n= length (r);
 routh =[r ([4 ,2]) ;r ([3 ,1]) ];
routh =[ routh ;- det ( routh )/ routh (2 ,1) ,0];
t= routh (2:3 ,1:2) ; // e x t r a c t i n g the s qu a r e sub b l o c ko f r outh mat r ix
 routh =[ routh ;- det (t)/t(2 ,1) ,0]
disp (routh ," r o u t h s t a b u l a t i o n=")
routh (3 ,1) =0 // For ma r g ina ly s t a b l e sys t em
sys = syslin ( ' c ' ,10/(s ^3+6.5* s ^2+10* s ))
k= kpure ( sys )
disp (k,"K( ma r g ina l )=")
disp ( '=0 ' ,routh (2 ,1) *(s^2) +1.5*10^7*k," a u x i l l a r y e q u a t i o n ")
p= poly ([ 10* K,0 ,6.5] , ' s ' , ' c o e f f ' )
s= roots (p)
disp (s," Fr equency o f o s c i l l a t i o n ( i n rad / s e c )=")
