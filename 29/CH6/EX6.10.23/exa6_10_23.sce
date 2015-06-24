//caption:determine_sensitivity_w.r.t_K_and_H
//example 6.10.23
//page 192
syms Wn zeta K H;
s=%s;
A=sym('Wn^2/(s^2+2*zeta*Wn*s)');
B=(A*K);
CL=B/(1+B*H);
CL=simple(CL);
disp(CL,"overall_transfer_function:M(s)=");
disp("sensitivity_w.r.t_K:");
a=diff(CL,K);
b=K/CL;
b=simple(b);
Sk=a*b;
Sk=simple(Sk);
disp(Sk,"sensitivity_w.r.t_K,Sk=");
disp("sensitivity_w.r.t_H:");
c=diff(CL,H);
d=H/CL;
d=simple(d);
Sh=c*d;
Sh=simple(Sh);
disp(Sh,"sensitivity_w.r.t_H,Sh=");