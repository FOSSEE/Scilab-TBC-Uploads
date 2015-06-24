x=[0 1 2 3];
X=dft(x,-1);
disp(X,"DFT is X(k)=")
x=dft(X,1);
disp(round(x),"IDFT is x[n]=")