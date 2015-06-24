// example:-7.8,page no.-373.
// program to derive an expression for the change in resonant frequency.
syms Ey Hx Hz A Zte n a pi x z d j k t y er eo c wo w b;
Ey=A*sin((pi*x)/a)*sin((pi*z)/d);
Hx=((-j*A)/Zte)*sin((pi*x)/a)*cos((pi*z)/d);
Hz=((j*pi*A)/(k*n*a))*cos((pi*x)/a)*sin((pi*z)/d);
Ey=Ey^2;
//c=(er-1)*eo;
w=c*integ(integ(integ(Ey,z),y),x);
w=limit(w,z,d)-limit(w,z,0);
w=limit(w,y,t)-limit(w,y,0);
w=limit(w,x,a)-limit(w,x,0);
disp(w)
// as sin(2*pi)=0;  then last term of above result will be:-
w=(c*A^2*a*t*d)/4;
disp(w,'on taking sin(2*pi)=0  , w becomes = ')
wo=((a*b*d*eo)/2)*A^2;
deltaw=(w-wo)/wo;
disp(deltaw,'fractional change in resonant frequency = ')