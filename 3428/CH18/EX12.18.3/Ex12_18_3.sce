//Section-12,Example-3,Page no.-SS.33
//To calculate distance between two adjacent atoms.
clc;
n=4
M=23+35.5
N=6.028*10^23
D=2.18
a=((n*M)/(N*D))^0.33                 //Lattice parameter(cm)
R=a/(sqrt(2))
disp(R,'Distance between two adjacent atoms(cm)')
//a=5.627*10^-8,R=2*r=a/sqrt(2)=3.979 *10^-8 is wrong in the book.
