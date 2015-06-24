pathname=get_absolute_file_path('7_4.sce')
filename=pathname+filesep()+'7_4data.sci'
exec(filename)
clear
D=(E*t^3)/(12*(1-v^3));
A11= (16*q0*(a^4)*(b^4))/((%pi^6)*D*((a*a +b*b)^2));
function[w]=f(x,y)
    w=A11*(sin(%pi*x/a))*(sin(%pi*y/b));
endfunction
funcprot()
x=linspace(0,a,10*a);
y=linspace(0,b,10*b);
clf();
w=feval(x,y,f);
plot3d1(x,y,w);
datatipToggle()
printf("\nA11= Wmax: %f mm",f(a/2,b/2));