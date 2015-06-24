clc
pathname=get_absolute_file_path('2_7_1.sce')
filename=pathname+filesep()+'271.sci'
exec(filename)
//this program uses least squares fit to solve for slope and intercept.
//hence the value differs from textbook a bit.
sx=sum(x);sx2=sum(x^2);sy=sum(y);sxy=sum(x.*y);n=length(x);
A=[sx,n;sx2,sx];B=[sy;sxy];p=A\B;
m=p(1,1);b=p(2,1);
clf()
xtitle('2.7_1.sce','Vdot(L/min)','R','boxed')
plot2d(x,y,style=3)
disp("in case 2, R=36")
R=36;
V=m*R+b;
printf("then V=%f",V);