//EXAMPLE 5.11
//Circular convolution using DFT
clc;
clear;
g = [1 2 0 1];
disp(g,'g[n] = ');
h = [2 2 1 1];
disp(h,'h[n] = ');
M=4;
for n=0:M-1
        for k=0:M-1
            W(n+1,k+1) = exp(-(%i*2*%pi*k/M)*n);
        end
    end
    G = W*g';
    H = W*h';
disp(G,'DFT is, G = ');
disp(H,'DFT is, H = ');

Y=G.*H;
y=(1/4)*conj(W)*(Y);
disp(real(y),'Circular convolution = ');