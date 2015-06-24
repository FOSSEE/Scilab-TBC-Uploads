//Finding the Performance Parameters of Single-Phase Full-Wave Controller
//Example 11.3(Page No- 508)
clc
clear
//given data
R = 10;//Ohm
Vs = 120;//V
Vm = sqrt(2)*Vs;
alpha = %pi/2;

//part(a)
Vo  = Vs*sqrt((1/%pi)*(%pi - alpha +(sin(2*alpha)/2)));
printf('(a)\t rms output voltage is %.2f V',Vo);

//part(b)
Io = Vo/R;
Po = Io^2*R;
VA = Vs*Io;

PF = Po/VA;
printf('\n (b)\t The input Power factor is %.3f(lagging)',PF);

//part(c)
function y=i(wt)
    y = (sqrt(2)*Vs*sin(wt))*(1/(2*%pi*R));
endfunction
I_A = intg(alpha,%pi,i);
printf('\n (c)\t The average thyristor current is %.2f A',I_A);

//part(d)
function y=i1(wt)
    y = ((1/(2*%pi*R^2))*(2*Vs^2*(sin(wt))^2));
endfunction
I_R = sqrt(intg(alpha,%pi,i1));
printf('\n (d)\t The rms value of the thyristyor current is %d A',I_R);
