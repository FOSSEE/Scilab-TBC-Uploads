pathname=get_absolute_file_path('5_10.sce')
filename=pathname+filesep()+'5_10data.sci'
exec(filename)
c=((a*a +b*b)^0.5);
L=[a;b;a;b;(a*a +b*b)^0.5;(a*a +b*b)^0.5];
F1=[a/b;1;a/b;1;-c/b;-c/b]
for i=1:6
    X(i)=F1(i)*F1(i)*L(i);
end
a11=sum(X)/(A*E);
X1=-alpha*b*T/a11;
Fa=[X1*a/b;X1;X1*a/b;X1;-X1*c/b;-X1*c/b]
printf("\nX1: %f N",X1);
disp("Forces in the Mambrane are (AB,BC,CD,DA,AC,DB):");
printf("\n %f KN",Fa);