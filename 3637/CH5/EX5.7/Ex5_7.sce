//problem 7 pagenumber 5.100
//given
enw=20e-9;//volt/hz
fce=200;//hz
inw=0.5e-12;//A
fci=2e3;//hz
//determine RMS voltage
z=fce*log(20e3/20)+(20e3-20);
en=nthroot(enw,z);
format(5);
disp("Rms Input Voltage = "+string(en)+' volt');//error in book
