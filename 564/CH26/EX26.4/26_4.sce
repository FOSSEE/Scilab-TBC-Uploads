pathname=get_absolute_file_path('26_4.sce')
filename=pathname+filesep()+'26_4data.sci'
exec(filename)
B=((a*t2)/6)+((b*t1)/18)*3;
A=((b*t1)/18)*6;
L1=Load/4;
x=L1/a;
d=b/3;
E=1,G=GE;
mu=(((G*t1)/(d*E))*((A+B)/(A*B)))^0.5;
D=(-x*A)/((A+B)*mu*cosh(L*0.5*mu));
function[Sb]=f(z)
     Sb=((D/B)*sinh(mu*z)) -(x/(A+B))*z;
endfunction
funcprot()
z=linspace(0,L,10*L);
Sb=feval(z,f);
plot2d(z,Sb);
xgrid(3),xtitle('σB versus z','z','σB');
datatipToggle()
printf("\nclick on the point to view its coordinate on the plot");