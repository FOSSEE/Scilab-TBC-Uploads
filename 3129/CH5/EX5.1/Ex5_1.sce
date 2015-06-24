//Finding the Performance of a Dc-Dc converter
//Example 5.1(Page No- 168) 
clc
clear
//given data
pi = 3.141592
Vs = 220;//V
k = 0.5;
R = 10;//Ohm
Vch = 2;//V
//part(a)
Va = (k*(Vs-Vch));
printf('(a)\t The average output voltage Va = %d V',Va);

//part(b)
Vo = sqrt(k)*(Vs-Vch);
printf('\n (b)\t the rms output voltage %3.2fV',Vo)

//part(c)
Po = k*(Vs-Vch)^2/R;
Pi = k*Vs*(Vs-Vch)/R;

eta = Po/Pi;
printf('\n (c)\t The converter efficiency %2.2f%%',eta*100)

//part(d)
Ri = R/k;
printf('\n (d)\t The effective input resistance Ri of the converter %d Ohm',Ri)

//part(e)
Vm = ((Vs*2)/pi);
Vrms = Vm/sqrt(2);
printf('\n (e)\t RMS value of fundamental component: %2.2fV',Vrms)
