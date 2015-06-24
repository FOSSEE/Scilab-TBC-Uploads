pathname=get_absolute_file_path('10_5.sce')
filename=pathname+filesep()+'10_5data.sci'
exec(filename)
for i=1:3
    lambda(i)=(i-0.5)*%pi/L;
    omega(i)=(lambda(i)^2)*(EI/(rho*A))^0.5;
    fre(i)=omega(i)/(2*%pi);
    K(i)=(cos(L*lambda(i))+cosh(L*lambda(i)))/(sin(L*lambda(i))+sinh(L*lambda(i)));
end
function[V1]=f(z)
    V1=K(1)*(cosh(z*lambda(1)) -cos(z*lambda(1)) -K(1)*(sinh(z*lambda(1)) -sin(z*lambda(1))));
endfunction
function[V2]=f1(z)
    V2=K(2)*(cosh(z*lambda(2)) -cos(z*lambda(2)) -K(2)*(sinh(z*lambda(2)) -sin(z*lambda(2))));
endfunction
function[V3]=f2(z)
    V3=K(3)*(cosh(z*lambda(3)) -cos(z*lambda(3)) -K(3)*(sinh(z*lambda(3)) -sin(z*lambda(3))));
endfunction
z=linspace(0,L,10*L);
subplot(3,1,1),xgrid(3),xtitle('1st Normal Mode Of Vibration','z','V')
V1=feval(z,f);
plot2d(z,V1);
subplot(3,1,2),xgrid(3),xtitle('2nd Normal Mode Of Vibration','z','V')
V2=feval(z,f1);
plot2d(z,V2);
subplot(3,1,3),xgrid(3),xtitle('3rd Normal Mode Of Vibration','z','V')
V3=feval(z,f2);
plot2d(z,V3);
printf("\nf1: %f ",fre(1));
printf("\nf2: %f ",fre(2));
printf("\nf3: %f ",fre(3));