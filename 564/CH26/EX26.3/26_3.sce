pathname=get_absolute_file_path('26_3.sce')
filename=pathname+filesep()+'26_3data.sci'
exec(filename)
clear
Tr=T*L1/2;
mu=(8*G*t/(A*E*(b+a)))^0.5;
L=L1/2;
k1=((T*(b-a)*10^3)/(8*a*b*G*t));
k2=1/(mu*cosh(mu*L));
k3=((4*(b-a))/(a*b*(b+a)));
k4=(2*T*(10^3)/(a*b*G*t*(b+a)));
function[th]=f(z)
    w=(k1*((k2*sinh(mu*z))-z));
    F=((k1*k3 +k4)*L*L*0.5 -(k1*k2*k3/mu)*cosh(mu*L));
    th=(k1*k2*k3/mu)*cosh(mu*z) -(k1*k3 +k4)*z*z*0.5 + F;
endfunction
funcprot();
printf("\nangle of twist at mid-span θ: %f rad",f(0));

