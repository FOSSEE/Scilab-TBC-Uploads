//Example No. 4_08
//Machine Epsilon
//Pg No. 72
clear ; close ; clc ;

deff('q = Q(p)','q = 1 + (p-1)*log10(2)' )
p = 24
q = Q(p)
mprintf('q = %.1f \n We can say that the computer can store numbers with %i significant decimal digits \n ',q,q)