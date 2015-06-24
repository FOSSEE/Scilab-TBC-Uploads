pathname=get_absolute_file_path('26_2.sce')
filename=pathname+filesep()+'26_2data.sci'
exec(filename)
clear
du=0;
P=[1 0 0 G*t*R;
   0 1 -G*t 2*R*G*t;
   0 0 1.79 -R
   0 0 -0.13 R];
X=[0;0;Load/(2*R*G*t);Load/((-0.5*%pi -6)*G*R*t)];
q=inv(P)*X;
printf("\nq12 = q34 = %f N/mm",q(1));
printf("\nq41= %f N/mm",q(2));
function[q23]=f(phi)
    q23=-R*G*t*q(4) -G*t*sin(phi)*q(3);
endfunction
phi=linspace(0,%pi,%pi*10);
q23=feval(phi,f);
plot2d(phi,q23);
xgrid(3),xtitle('q23 versus φ','φ','q23');
datatipToggle();