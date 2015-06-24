//deconvolution by polynomial division
x=[2 5 0 4];
y=[8 22 11 31 4 12];
z=%z
n=length(x)-1:-1:0;
X=x*(z)^n'
n1=length(y)-1:-1:0;
Y=y*(z)^n1'
h=Y/X