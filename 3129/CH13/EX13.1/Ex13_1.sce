//Finding the inductive reactance and delay angle of TCR 
//Example 13.1(Page No-582) 
clc
clear
//given data5
Pp=56000;//power in watts
V=220;//IN VOLTS
f=60;//Hz
X=1.2;//OHMS
w=(2*%pi*f);//frequency in rad/s
ILm=100;//maximum current of TCR in A
k=0.6;

//part (a)
d=2*asin((X*Pp)/(2*V^2));
e=180*d/%pi;//convert in degrees
printf('(a) Phase angle:%2.2f Degrees \n',e);

//part (b)
I=(4*V*sin(d/4))/X;
printf(' (b) Line current I:%3.1f A \n',I);

//part (c)
Qp=4*V^2*(1-cos(d/2))/X;
Qp=Qp*10^-3;//in KVA
printf(' (c) Reactive power for shunt compensator :%2.2f kVA \n',Qp);

//part (d)
Iq=Qp*10^3/V;
printf(' (d) Current through TCR Iq:%3.3f A \n',Iq);

//part(e)
Xl=V/ILm;
printf(' (e) The inductive reactance Xl:%1.2f ohms \n',Xl);

//part(f)
Il=k*ILm;
printf(' (f) current thourgh TCR for 0.6I Lm:%d A \n',Il);

function y=f(alpha)
    y = ((V/Xl)*(1-(2/%pi)*alpha)-((1/%pi)*sind(2*alpha)))-Il;
endfunction
alpha = 15;//initial guess
//derivative
function z=d(alpha)
    z = (220/2.2)*(-(2/%pi)-((1/%pi)*cosd(2*alpha)*2));
endfunction
a = fsolve(alpha,f,d);

//ans given in textbook is wrong
printf('     The delay angle of TCR is %.2f rad',a);



