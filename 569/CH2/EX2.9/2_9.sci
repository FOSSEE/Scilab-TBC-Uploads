// calculating the signal to noise ratio at input
// calculating the signal to noise ratio at output
//calculating the noise factor and noise figure
clc;
disp('signal to noise ratio at input')
Sni=(3*10^-6/(1*10^-6))^2;
disp(Sni,'signal to noise ratio at input=')
disp('signal to noise ratio at output')
Sno=(60*10^-6/(20*10^-6))^2;
disp(Sno,'signal to noise ratio at output=')
disp('New signal to noise ratio at output')
Snno=(60*10^-6/(25*10^-6))^2;
disp(Snno,'signal to noise ratio at output=')
F=Sni/Snno;
disp(F,'noise Factor=')
nf=10*log10(F);
disp(nf,'noise Figure(dB)=')