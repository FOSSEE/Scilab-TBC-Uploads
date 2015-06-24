// example:-7.9,page no.-376.
// program to derive an expression for the change in resonant frequency.
syms Ey Hx Hz A Zte n a pi x z d j eo c wo w b l ro;
Ey=A*sin((pi*x)/a)*sin((pi*z)/d);
Hx=((-j*A)/Zte)*sin((pi*x)/a)*cos((pi*z)/d);
Hz=((j*pi*A)/(k*n*a))*cos((pi*x)/a)*sin((pi*z)/d);
Ey=A;// at x=a/2,y,z=d/2;
Hx=0;// at x=a/2,y,z=d/2;
Hz=0;// at x=a/2,y,z=d/2;
//where w is perturbed resonant frequency and wo is unperturbed resonant frequency.
w=-eo*A^2*pi*l*ro^2;
wo=(a*b*eo*d*A^2)/2;
deltaw=(w-wo)/wo;
disp(deltaw,'the perturbation in resonant frequency w.r.t wo = ')