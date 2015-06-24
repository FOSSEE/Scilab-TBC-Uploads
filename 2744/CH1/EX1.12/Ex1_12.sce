clear ;
clc ; 
alpha = 0.0000062 ;//co-efficient of the expansion in "per F"
t = 100;//in F
d = 3/4;//in inches
del = 0.02;//in inches
l = 15;//in ft
E = 13000;//in tons/in^2
e = alpha*t - (del/(l*12));
p = E*e;//in tons/in^2
A = 0.25*%pi*d^2;//in in^2
P = p*A ;//in tons
printf('Tensile strain imposed by end-grips,e = %.5f',e);
printf('\n p = %.2f tons/in^2\n P = %.2f tons',p,P);
