//z transform of switched periodic signals
z=%z;
//sol. for 4.20a
x1=[0 1 2];
n=0:2;
N=3;
x1z=x1*(1/z)^n'
xz=x1z/(1-z^-N)
//sol.for 4.20b
x1=[0 1 0 -1];
n=0:3;
N=4;
x1z=x1*(1/z)^n'
xz=x1z/(1-z^-N)
//sol.for 4.20c
xz=(2+z^-1)/(1-z^-3);
x1z=numer(xz)
//thus first period of xn is [2 1 0]
//sol.for 4.20d
xz=(z^-1-z^-4)/(1-z^-6);
x1z=numer(xz)
//thus first period of xn is [0 1 0 0 -1 0]