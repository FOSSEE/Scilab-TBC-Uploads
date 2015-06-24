//ques16
syms z
//f=(2/z^2+5/z^3+14/z^4)/(1-1/z)^4
f=(2/z^2+5/z+14)/(1/z-1)^4
u0=limit(f,z,0);
u1=limit(1/z*(f-u0),z,0);
u2=limit(1/z^2*(f-u0-u1*z),z,0);
disp('u2=');
disp(u2);
u3=limit(1/z^3*(f-u0-u1*z-u2*z^2),z,0);
disp('u3=');
disp(u3);
