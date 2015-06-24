//Example 6.4
//Program to c a l c u l a t e Twiddle f a c t o r exponent s f o r each s t a g e
clc ;
N =32; //Given
// Ca l c u l a t i o n o f Twiddle f a c t o r exponent s f o r each s t a g e
for m =1:5
disp (m, ' St a g e : m =' );
disp ( ' k =' );
for t =0:(2^(m -1) -1)
k=N*t/2^m;
disp(k);
end
end

