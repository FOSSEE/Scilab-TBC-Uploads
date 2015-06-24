pathname=get_absolute_file_path('8_3.sce')
filename=pathname+filesep()+'8_3data.sci'
exec(filename)
A=t*(2*a +b);
Ixx=2*a*t*(b/2)^2 +(t*b^3)/12;
Iyy=(2*t*a^3)/12;
I0=Ixx+Iyy;
J=(2*a*t^3)/3 +(b*t^3)/3;
tau=(t*a^3 *b^2)/24;
Px=(%pi^2 *E*Ixx/L^2);//PCR(xx)
Py=(%pi^2 *E*Iyy/L^2);//PCR(yy)
Pth=(A/I0)*(G*J +(%pi^2 *E*tau)/L^2);//PCR(θ)
P=poly(0,'P');
y=(I0/A)*(P^2 -(Px +Pth)*P +Px*Pth);
m=roots(y);
Ptb1=m(1,:)
Ptb2=m(2,:)
Load=[Px;Py;Pth];
printf("\nbuckling Load: %f N",min(Load));
printf("\nflexural-torsional buckling Load: %f N",roots(y));