//EX10_22 PG-10.76
clc
R1=100e3;
Cf=1e-6;
Vm=6e-3;//peak value of the input voltage
fr=2e3;//frequency  supplied at the input
w=2*%pi*fr;//angular frequency in rad/s
a=-Vm/(R1*Cf)//constant 
printf("\n   We integrate Vin ie Vo = %.2f*integrate(sin4*pi*100)\n\n",a)
function y=f(x),y=sin(w*x),endfunction
t=input('   Enter the value of t (between 0 and 1) :  ");
//the limit is from 0 to t
I=intg(0,t,f);//we should enter the value of t 
x=I*a;
disp(x);                    
