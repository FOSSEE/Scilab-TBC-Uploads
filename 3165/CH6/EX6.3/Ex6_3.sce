//Example 6. 3
//Program to c a l c u l a t e s h o r t e s t s e quenc e N such tha t a l g o r i t hm B runs // f a s t e r than A
clc ;
i =0;
N =32; //Given
// Ca l c u l a t i o n o f Twiddle f a c t o r exponent s f o r each s t a g e
while 1==1
i=i+1;
N =2^ i;
A=N^2;
B =5* N* log2 (N);
if A>B then break ;
end
end
disp (N, 'SHORTEST SEQUENCE N =' );
