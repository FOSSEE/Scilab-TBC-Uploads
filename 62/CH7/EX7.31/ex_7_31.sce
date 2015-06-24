clc;
A=[0 1;-1/3 4/3];
B=[0;1/3];
C=[-1/3 4/3];
D=[1/3];
Hz=ss2tf(syslin('d',A,B,C,D));
disp(Hz,"H(z)=");
z = %z;
syms n z1; 
X =z ^2 /(1-4*z+3*z^2)
X1 = denom (X);
zp = roots (X1);
X1 = z1 ^2 /((z1-1)*(z1-1/3))
F1 = X1 *( z1 ^(n -1) )*(z1 -1/3 );
F2 = X1 *( z1 ^(n -1) )*(z1 -1 );
h1 = limit (F1 ,z1 ,zp (1) );
disp (h1 , ' h1 [ n]= ' )
h2 = limit (F2 ,z1 ,zp (2) );
disp (h2 , ' h2 [ n]= ' )
h = h1+h2;
disp ('for n>=0',h, ' h [ n]= ' ) 
n=0:10;
x=2^-n.*[zeros(1,find(n==0)-1) ones(1,length(n)-find(n==0)+1)];
hn= 3/2-(3^-n)/2;
y=convol(x,hn);
plot2d3(n,y(1:length(n)))
figure
plot2d3(n,(3/2)-2^-n+(3^-n)/2)
disp("hence from the figure we can say y[n]=(3/2)-2^-n+(3^-n)/2")  
