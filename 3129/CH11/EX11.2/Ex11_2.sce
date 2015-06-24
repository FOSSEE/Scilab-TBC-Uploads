//Finding the Performance Parameters of Single-Phase Half-Wave Controller
//Example 11.2(Page No- 505)
clc
clear
//given data
R = 10;//Ohm
Vs = 120;//V
alpha = %pi/2;
Vm  = sqrt(2)*Vs;

//part(a)
Vo = Vs*(sqrt(3/4));
printf('(a) \t RMS value of output current is %.2fV',Vo);

//part(b)
Io = Vo/R;
Po = Io^2*R;
VA = Vs*Io;
PF = Po/VA;//PF = sqrt(n+(n+m))
printf('\n (b)\t The input Power factor is %.3f(lagging)',PF);

//part(c)
Vdc = ((sqrt(2)*Vs)/(2*%pi))*(cos(alpha)-1);
printf('\n (c)\t The average output voltage %dV',Vdc);
I_D = Vdc/R;
printf('\n \t The average input current is %.1f A',I_D);
