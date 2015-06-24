clc;
n=1;
thita=30;//angle in degree
lamda=1.75; //in A
h=1;
k=1;
l=1;
//d111=a/sqrt((h*h)+(k*k)+(l*l))
//2dsin(thita)=n*lamda
d=n*lamda/(2*sind(thita));
a=sqrt(3)*d;//lattice constant 
disp(+'meters',a*1e-10,"lattice constant =")
