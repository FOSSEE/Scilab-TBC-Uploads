//problem 5 pagenumber 4.39
//given
fs=1e3;//hz
r=0.01;format(6);
vref=10;//volt
//determine n vmin rms fs1 t1 z
r=0.01/100;
n=14;
mbit=2^n;
disp('Minumum number of bits = '+string((mbit)));
vm=vref/2^n;
disp('Minmum voltage = '+string(vm*10^6)+' μvolt');
eq=vref/(2^n*2*sqrt(3)); 
disp('Quantization error = '+string(eq*10^6)+' μvolt');
fs1=5*fs;
disp('Sampling rate = '+string(fs1)+' Hz');
t1=1/(2*%pi*fs*2^n);
disp('Aperture time = '+string(t1*10^6)+' milisecond');//error in book
disp('Converter = '+string(6*n)+' dB');
