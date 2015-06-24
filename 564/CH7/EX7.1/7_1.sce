pathname=get_absolute_file_path('7_1.sce')
filename=pathname+filesep()+'7_1data.sci'
exec(filename)
D=(E*t^3)/(12*(1-v^2));
X=(16*q0/(D*%pi^6))/(((1/a^2)+(1/b^2))^2);
X1=(16*q0/%pi^4)*((1/a^2)+(v/b^2))/(((1/a^2)+(1/b^2))^2);
X2=(16*q0/%pi^4)*((v/a^2)+(1/b^2))/(((1/a^2)+(1/b^2))^2);
function[w]=f(x,y),//taking first term only
    w=X*(sin(%pi*x/a))*sin(%pi*y/b);
endfunction
x=linspace(0,a,10*a);
y=linspace(0,b,10*b);
w=feval(x,y,f);
plot3d1(x,y,w);
Wmax=(0.0443*q0*a^4)/(E*t^3);//from summation of first 4 terms
printf("\nWmax: %f mm",Wmax);
function[Mx,My]=f1(x,y)//taking first term only
    Mx=X1*(sin(%pi*x/a))*sin(%pi*y/b);
    My=X2*(sin(%pi*x/a))*sin(%pi*y/b);
endfunction
function[Sx,Sy]=f2(x,y,z)//taking first term only
    Sx=12*X1*(sin(%pi*x/a))*sin(%pi*y/b)*z/t^3;
    Sy=12*X2*(sin(%pi*x/a))*sin(%pi*y/b)*z/t^3;
endfunction
Mxmax=0.0479*q0*a^2;//from summation of first 5 terms
printf("\nMx,max= My,max= %f N.mm",Mxmzx);
Sxmax=(0.287*q0*a^2)/t^2;
printf("\nσx,max= σy,max= %f N.mm",Sxmax);
