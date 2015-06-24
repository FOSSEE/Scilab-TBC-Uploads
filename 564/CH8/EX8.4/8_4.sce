pathname=get_absolute_file_path('8_4.sce')
filename=pathname+filesep()+'8_4data.sci'
exec(filename)
clear
Xc=(a2^2)/(b+ 2*a2);//x bar
Xs=-(Xc+((3*a2^2)/(b*(1+ 6*a2/b))));
A= 2*a2*t + b*t;
Ixx=2*a2*t*(b/2)^2 +(t*b^3)/12;
Iyy=b*t*Xc^2 +(2*t/3)*((a2-Xc)^3 +Xc^3);
I0=Ixx+Iyy+ A*Xs^2;
J=(2*a2*t^3)/3 +(b*t^3)/3;
tau= 0.1244*t*a2^3 *b^2;
Px=((%pi^2)*E*Ixx/(L^2));//PCR(xx)
Py=((%pi^2)*E*Iyy/(L^2));//PCR(yy)
Pth=(A/I0)*(G*J +((%pi^2)*E*tau)/(L^2));//PCR(θ)
a=(1-(A*Xs^2)/I0),b=-(Px +Pth),c=Px*Pth;
P1=(-b +(b*b -4*a*c)^0.5)/(2*a);
P2=(-b -(b*b -4*a*c)^0.5)/(2*a);
Load=[Px;Py;Pth;P1;P2];
minimum=Load(1);
for i=2:5
    if(Load(i)<Load(i-1)) then
        minimum=Load(i);
        a1=i;
    end
end
if(a1>3) then
    printf("\nflexural-torsional buckling will happen.\nand buckling load is: %f N",minimum);
else
    printf("\nuncoupled buckling will happen\nand buckling Load is %f N",minimum);
end
