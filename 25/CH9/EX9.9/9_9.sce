// example:-9.9,page no.-521.
// design a bandpass filter using three quarter wave open circuit stubs.
f=2*10^9;delta=0.15;Zo=50;N=3;gn=1.5963;
Zon=4*Zo/(%pi*gn*delta);
Z_on=(%pi*Zo*delta)/(4*gn);
disp(Zon,'the cahracteristic impedence of a bandpass filter is = ')
disp(Z_on,'for a bandpass filter using short circuited stub resonators,the corresponding result is = ')