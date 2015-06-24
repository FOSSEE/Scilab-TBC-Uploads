clc;clear;
//Example 4.10

//given data
r=1.746;//atomic radius in angstrom

//calulations
a=4*r/sqrt(2);
//for (i)
h=2;k=0;l=0;
d=a/sqrt(h^2+k^2+l^2);
disp(d,'distace for (200) in A.U');
//for (ii)
h=2;k=2;l=0;
d=a/sqrt(h^2+k^2+l^2);
disp(d,'distace for (220) in A.U ')
//for (iii)
h=1;k=1;l=1;
d=a/sqrt(h^2+k^2+l^2);
disp(d,'distace for (111) in A.U')