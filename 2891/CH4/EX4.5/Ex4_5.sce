//Exa 4.5
clc;
clear;
close;
// given :
N=100 // no. of elements
Lm=poly(0,'Lm') // defining Lm as lambda
d=0.5*Lm
l=N*d // array length
B.W.F.N = 114.6 /(l/Lm) // beam width in degrees
B.W.F.N=horner(B.W.F.N,1) 
disp(B.W.F.N ,"null-to-null beamwidth in degrees:")
H.P.B.W = B.W.F.N/2 // half power beam width in degrees
disp(H.P.B.W ,"half power beamwidth in degrees:")
D1=2*(l/Lm) // directivity of broad side array
D1=horner(D1,1)
D2=4*(l/Lm) // directivity of end fire array
D2=horner(D2,1)
disp(D1,"directivity of broad side array:")
disp(D2,"directivity of end fire array:")

// note : answer in the book is mis-printed,the HPBW is not 11.46 it should be 1.146 degrees. 

// note: misprint in second step of part a in book correct is l=N*d=100*0.5*lambda=50*lambda 
