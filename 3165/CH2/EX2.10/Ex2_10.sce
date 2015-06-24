//Example 2 .10
//To f i n d input x ( n )
//X( z )=1/(1􀀀2 z ^(􀀀1) ) (1􀀀z ^(􀀀1) ) ^ 2 ;
clc ;
z=%z;
a=(z -2) *(z -1) ^2;
b=z^3;
h = ldiv (b,a ,6);
disp (h," F i r s t s i x v a l u e s o f h ( n )=");
