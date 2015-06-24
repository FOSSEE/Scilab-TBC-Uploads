
clear;
clc;
close;
// using s=n*{2*a+(n-1)*d}/2 
a=3;d=3;s=135;
//substituting given values
n=poly(0,'n');
p=n/2*{6 + (n-1)*3}-135;
n=roots(p)
mprintf("\n As root -10 is inadmissible, the solution is n=9")
