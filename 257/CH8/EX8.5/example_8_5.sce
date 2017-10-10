s=%s;
F=s^6+4*s^5+3*s^4-16*s^2-64*s-48;
//replace 's' by '1/z'//
//F=48*z^6+64*z^5+16*z^4-3*z^2-4*z-1;
disp(routh_t(F))
routh=routh_t(F)
r=coeff(F)
n=length(r)
c=0;

disp("positive real=1, zero real part=2, negative real part=3")
