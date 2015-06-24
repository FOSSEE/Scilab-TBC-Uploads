//Example 15.20
//Carp Karp Runge Kutta Method
//Page no. 537
clc;clear;close;
deff('y=f(x,y)','y=x-y')
y=1;x=1;h=0.1;printf('\n')
U=[0,1/5,3/10,3/5,1,7/8];
v=[0,0,0,0,0;1/5,0,0,0,0;3/40,9/40,0,0,0;3/10,-9/10,6/5,0,0;-11/54,5/2,-70/27,35/27,0;1631/55296,175/512,575/13824,44275/110592,253/4096];
a=[37/378,0,250/621,125/594,0,512/1771];
a1=[2825/27648,0,18575/48384,13525/55296,277/14336,1/4];
for l=1:5
    K(1)=h*f(x,y);
for i=2:6
    k=0;
    for j=1:i-1
        k=k+v(i,j)*K(j)
    end
    K(i)=h*f(x+U(i)*h,y+k)
end
k=0;
for i=1:6
    k=k+a(i)*K(i)
end
y1=y+k;
k=0;
for i=1:6
    k=k+a1(i)*K(i)
end
y11=y+k;
for i=1:6
    printf('K%i = %.9f\n',i,K(i))
end
printf('\ny(1.1) = Y%i = %.9f\n',l,y1)
printf('y~(1.1) = Y%i~ = %.9f\n',l,y11)
y=y1;
printf('\n\n\n')
end