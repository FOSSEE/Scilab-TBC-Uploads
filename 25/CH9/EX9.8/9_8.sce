// example:-9.8,page no.-516.
// design a coupled line band pass filter with N=3.
delta=0.1;f=1.8*10^9;fo=2*10^9;Zo=50;fc=1;
f=(1/delta)*((f/fo)-(fo/f));
x=abs(f/fc)-1; // the value on the horizontal scale.
attntn=20; // from above values.
disp(attntn,'attenuation in db = ')