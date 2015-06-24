// to determine the raise time  displayed waveform
// example9-13 in page 279
clc;
// Data given
fH=[20e+6 50e+6];// upper cut-off frequency in hertz
tri=21D-9;// input raise time in seconds
// calculation
for n=1:2
    tro=0.35/fH(n);// tro is the raise time in seconds
    trd=sqrt(tri^2+tro^2);// trd is the fall time in seconds
    printf("for fH=%d MHz,\ntrd=%d ns\n",fH(n)/10^6,trd*10^9);
end
//result
//for fH=20 MHz,
//trd=27 ns
//for fH=50 MHz,
//trd=22 ns