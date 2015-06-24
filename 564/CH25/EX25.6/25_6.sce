pathname=get_absolute_file_path('25_6.sce')
filename=pathname+filesep()+'25_6data.sci'
exec(filename)
clear
Ixx=((2*E12*t12*((L23/(2*L12))^2)*L12^3)+(E23*t23*L23^3))/12;
alpha=asin(L23*0.5/L12);
function[qb12]=qb12x(s1)
    qb12= 0.5*(t12*sin(alpha)*E12*Sy/Ixx)*s1^2;
endfunction
function[qb23]=qb23x(s2)
    qb23=((-E23*t23*Sy/Ixx)*(-0.5*L23*s2 +0.5*s2^2))+qb12x(L12);
endfunction
funcprot();
qs0=((Sy*L12)+(L23*L12*qb12x(L12)/3))/(L12*L23);
function[q12]=q12x(s1)
    q12=qb12x(s1)-qs0;
endfunction
function[q23]=q23x(s2)
    q23=qb23x(s2)-qs0;
endfunction
s1=linspace(0,L12,10*L12);
s2=linspace(0,L23,10*L23);
q12=feval(s1,q12x);
q23=feval(s2,q23x);
subplot(2,1,1)
plot2d(s1,q12);
xgrid(3)
xtitle('','s1','q12')
subplot(2,1,2)
plot2d(s2,q23);
xgrid(3)
xtitle('','s2','q23')
datatipToggle();
printf("\nclick on the point to view its coordinate on plot")