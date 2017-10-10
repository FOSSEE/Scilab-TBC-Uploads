clc;
p=6; // number of poles
c=40; // number of coils
w=2; // winding pitch for simplex lap winding
printf('Number of commutator segments is equal to number of coils=%f\n ',c);
k=1/3; // integer added(or subtracted) to calculate back pitch to make it an odd integer
yb=((2*c)/p)-k;
printf('Back pitch is %f \n',yb);
yf=yb-w;
printf('Front pitch for progressive winding is %f\n',yf);
yf=yb+w;
printf('Front pitch for retrogressive winding is %f\n',yf)
yc=1;
printf('For simplex lap winding, commutator pitch is equal to %f ',yc);
