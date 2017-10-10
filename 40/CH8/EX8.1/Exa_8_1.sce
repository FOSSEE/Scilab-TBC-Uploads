//DFT from defining relation
//N-point DFT
x=[1 2 1 0];
XDFT=fft(x,-1);
disp(XDFT,'The DFT of x[n] is');
//DFT of periodic signal x with period N=4