clc;
A=[0 1;-1/8 3/4];
B=[0;1];
C=[-1/8 3/4];
D=[1];
Hz=ss2tf(syslin('d',A,B,C,D));
disp(Hz,"H(z)=");
z = %z;
syms n z1; //To f i n d out I n v e r s e z t r a n s f o rm z must
//be l i n e a r z = z1
X =z ^2 /((z -(1/2) )*(z -(1/4) ))
X1 = denom (X);
zp = roots (X1);
X1 = z1 ^2 /(( z1 -(1/4) )*(z1 -(1/2) ))
F1 = X1 *( z1 ^(n -1) )*(z1 -zp (1) );
F2 = X1 *( z1 ^(n -1) )*(z1 -zp (2) );
h1 = limit (F1 ,z1 ,zp (1) );
disp (h1 , ' h1 [ n]= ' )
h2 = limit (F2 ,z1 ,zp (2) );
disp (h2 , ' h2 [ n]= ' )
h = h1+h2;
disp ('for n>=0',h, ' h [ n]= ' )