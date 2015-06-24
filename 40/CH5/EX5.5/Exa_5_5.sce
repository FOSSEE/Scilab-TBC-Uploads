x=[1 0 2 0 3];//one period of signal
n=0:4;
k=0:4;
x1=x*exp(%i*n'*2*k*%pi/4)
DTFTx=abs(x1)
DFT=dft(x,-1)
DFS=DFT/5