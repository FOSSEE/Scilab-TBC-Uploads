pathname=get_absolute_file_path('10_2.sce')
filename=pathname+filesep()+'10_2data.sci'
exec(filename)
lambda=(m*l^3)/(6*EI);//λ
a=188,b=-44,c=1
m1=(-b+(b*b -4*a*c)^0.5)/(2*a);
m2=(-b-(b*b -4*a*c)^0.5)/(2*a);
omega1=(m1/lambda)^0.5;//ω1
omega2=(m2/lambda)^0.5;//ω2
f1=[omega1;omega2];
f=min(f1)/(2*%pi);
printf("\nlowest natural frequency is: %f",f);