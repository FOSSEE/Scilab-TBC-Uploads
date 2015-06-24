//EXAMPLE 5.15
//DFT computation using DFT of shorter length sequences

clc;
clear;
v = [1 2 2 2 0 1 1 1];
disp(v,'Length-8 real sequence v[n] = ')
for i=1:4
    g(i)=v(2*i-1);
    h(i)=v(2*i);
end
G = fft(g,-1);
H = fft(h,-1);
M=length(v);
//for n=0:M-1
        for k=0:M-1
            W(1,k+1) = exp(-(%i*2*%pi*k/M)*1);
        end
//end
G=[G(1) G(2) G(3) G(4) G(1) G(2) G(3) G(4)] ;
H=[H(1) H(2) H(3) H(4) H(1) H(2) H(3) H(4)] ;
V=G + W.*H;
disp(V,'DFt,V[k] = ');
















//for k = 0:3
//    V1(k+1) = G(k+1) + (exp(-2*%pi*%i*k/8))*H(k+1);
//end

//for k = 4:7
//    V2(k) = G(k-3) + (exp(-2*%pi*%i*k/8))*H(k-3);
//end
//disp([V1,zeros(1,3)]+V2)
