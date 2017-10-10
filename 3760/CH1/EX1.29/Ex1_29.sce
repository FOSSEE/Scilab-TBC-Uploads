clc;
p=20000; // rated capacity of transformer
n=0.98; // efficiency of transformer at full load and half load
c=[ 1 1; 1 1/4];
o=[ ((1/n)-1)*p; ((1/n)-1)*(p/2)];
l=inv(c)*o; 
printf('Core losses are %f W\n',l(1));
printf('Ohmic losses are %f W\n',l(2));
re=l(2)/p; 
printf('p.u. value of equivalent resistance is %f ',re);

