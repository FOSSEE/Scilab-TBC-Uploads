//convolution by polynomial method
x=[4 1 3];
h=[2 5 0 4];
z=%z;
n=length(x)-1:-1:0;
X=x*z^n';
n1=length(h)-1:-1:0;
H=h*z^n1';
y=X*H
//effect of zero insertion on convolution
h=[2 0 5 0 0 0 4];
x=[4 0 1 0 3];
y=convol(x,h)
//effect of zero padding on convolution
h=[2 5 0 4 0 0];
x=[4 1 3 0];
y=convol(x,h)