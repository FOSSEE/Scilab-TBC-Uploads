pathname=get_absolute_file_path('7_3.sce')
filename=pathname+filesep()+'7_3data.sci'
exec(filename)
D=(E*t^3)/(12*(1-v^2));
X=(16*q0/(D*%pi^6))/((((1/a^2)+(1/b^2))^2)+(Nx/(D*a*a*%pi^2)));
function[w]=f(x,y),//taking first term only
    w=X*(sin(%pi*x/a))*sin(%pi*y/b);
endfunction
x=linspace(0,a,10*a);
y=linspace(0,b,10*b);
w=feval(x,y,f);
plot3d1(x,y,w);
datatipToggle();
printf("\nclick on the point to view its coordinate on the plot")