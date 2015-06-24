//EXAMPLE 2.5,Conjugate-Antisymmetric & Conjugate-symmetric parts of Sequence
clc;
clear;
g=[0, 1+%i*4, -2+%i*3, 4-%i*2, -5-%i*6, -%i*2, 3];
disp(g,'g = ')
g1=conj(g);          //Conjugate of g;       
disp(g1,conj(g));
a=length(g);
for i=1:a
    g2(1,i)=g1(a-i+1);
end

gcs=(g+g2)/2        //Conjugate-Symmetric part
disp(gcs,'The Conjugate symmetric part is =');
gcas=(g-g2)/2;      //Conjugate-Antisymmetric part
disp(gcas,'The Conjugate antisymmetric part is =');