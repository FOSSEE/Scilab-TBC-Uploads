//The DTFT and conjugate symmetry
//8-point DFT
x=[1 1 0 0 0 0 0 0];
XDFT=dft(x,-1);
disp(XDFT,'The DFT of x is');
disp('from conjugate symmetry we see XDFT[k]=XDFT[8-k]');