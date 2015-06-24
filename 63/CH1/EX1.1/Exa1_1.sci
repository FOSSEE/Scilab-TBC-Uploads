//Determine the first four terms in the Fourier series for a rectangular waveform

f = 1e+3;
T = 1/f;
pw = 500e-6;
A = 10;
p = pw/T;
ft1 = (A*p);
ft2 = ( (2*A*p) * sin(%pi*p)/(%pi*p) * cos(2e+3*%pi*p) );
ft3 = ( (2*A*p) * sin(%pi)/(%pi) * cos(4e+3*%pi*p) );
ft4 = ( (2*A*p) * sin(1.5*%pi)/(1.5*%pi) * cos(6e+3*%pi*p) );

disp(ft1, ' Fourier transform 1st = ')
disp(ft2, ' Fourier transform 2nd = ')
disp(ft3, ' Fourier transform 3rd = ')
disp(ft4, ' Fourier transform 4th = ')

//For Plotting graph

xset('window',1);
xtitle("Sine in radians","X axis","Y axis");
x=linspace(0,2*%pi,50);
y=sin(x);
plot(x,y);