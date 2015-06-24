pathname=get_absolute_file_path('10_1.sce')
filename=pathname+filesep()+'10_1data.sci'
exec(filename)
lambda=(m*l^3)/(3*48*EI);//λ
x=poly(0,'x');
y=21*x^2 -22*x +1;
m=roots(y);
omega1=(m(1,:)/lambda)^0.5;//ω1
omega2=(m(1,:)/lambda)^0.5;//ω2
f1=omega1/(2*%pi);
f2=omega2/(2*%pi);
printf("\nf1:%f",f1);
printf("\nf2:%f",f2);