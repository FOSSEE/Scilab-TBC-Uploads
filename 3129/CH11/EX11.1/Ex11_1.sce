//Finding the Performances of an AC Voltage Controllers with On-Off Control
//Example 11.1(Page No- 502)
clc
clear
//given data
R = 10;//Ohm
Vs = 120;//V
Vm = sqrt(2)*Vs;//V
n = 25;//cycles...on
m = 75;//cycles...off
k = n/(n+m);

//part(a)
Vo  = Vs*sqrt(k);
printf('(a)\t The RMS value of output voltage is %dV',Vo);
Io = Vo/R;
printf('\n \t rms Load current is %.1fA ',Io);

//part(b)
Po = Io^2*R;
VA = Vs*Io;
PF = Po/VA;//PF = sqrt(n+(n+m))
printf('\n (b)\t The input Power factor is %.1f(lagging)',PF);

//part(c)
Im = Vm/R;
function y=i(wt);
    y = (Im*sin(wt))*(n/(2*%pi*(m+n)));    
endfunction
I_A = intg(0,%pi,i);
printf('\n (c)\t The average current of thyristor is %.2fA',I_A);

function y=i1(wt);
    y = (Im*(sin(wt)))^2;
endfunction
I_R = sqrt((n/(2*%pi*(m+n)))*intg(0,%pi,i1));
printf('\n \t The rms current of thyristor is %.2f A',I_R);


