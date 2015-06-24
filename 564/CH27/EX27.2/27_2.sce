pathname=get_absolute_file_path('27_2.sce')
filename=pathname+filesep()+'27_2data.sci'
exec(filename)
clear
TR=((t*a^3 *b^2)*(2*b +a))/(12*(b+ 2*a));
J=(1/3)*(2*a +b)*t^3;
mu=((G*J)/(E*TR))^0.5;
Ar1=(-3/4)*(a*b/4);
Ar2=(1/4)*(a*b/4);
MT=P*2*Ar2;
X=-MT/(E*TR);
D=X/(mu*cosh(mu*L));
F=-D*cosh(0)/mu;
function[theta]=th(z)//θ
    theta=((D/mu)*cosh(mu*z))+F;
endfunction
z=linspace(0,L,10*L);
theta=feval(z,th);
plot2d(z,theta);
xgrid(3)
xtitle('angle of twist versus Z','Z','θ')
datatipToggle();
printf("\nθ(top): %f rad",th(L));
MT0=-E*TR*X/3;
A=(2*a +b)*t;
Sz1=(P/A)+(MT0/TR)*2*Ar1;//σz1
Sz2=(P/A)+(MT0/TR)*2*Ar2;//σz2
printf("\nσz1= σz4= %f N/mm^2",Sz1)
printf("\nσz3= σz2= %f N/mm^2",Sz2)