clc;
p=8; // number of poles
c=240; // number of coils
r=10; // number of equilizer ring
Yeq=(2*c)/p;
printf('Equipotential pitch is %f coils\n',Yeq);
Ytp=(2*c)/(r*p);
printf('Tapping point pitch is %f coils',Ytp);
disp('Arrangement is shown in tabular form in example 7.9');
