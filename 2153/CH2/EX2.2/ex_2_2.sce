
//Example 2.2 : radius of the second bohr"s orbit 
clc;
clear;
close;
//given data :
format('v',6)
r1_h=0.529; // radius for hydrozen atom in Angstrum
n1=1;// for the first bohr's orbit of electron in hydrozen atom
Z1=1; // for the first bohr's orbit of electron in hydrozen atom
k=(r1_h*Z1)/n1^2; // where k is constant
n2=2; // for the second bohr orbit
Z2=2; //for the second bohr orbit
r2_he=k*(n2^2/Z2);
disp(r2_he,"radius of the second bohr orbit,r2(Angstrom) = ")
