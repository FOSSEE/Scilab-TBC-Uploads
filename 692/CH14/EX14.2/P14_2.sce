//Example 14.2
//EFFECT OF DFT LENGTH ON SPECTRAL ANALYSIS
clear;
clc;
N=16;
n=0:N-1;
f1=input("Enter f1 value between 0.28 to 0.31 = ");      //Input f1 = 64
f2=0.34;

R = 128//
//DFT of the sequence x[n] 
    x=0.5*(sin(2*%pi*f1*n')) + sin((2*%pi*f2*n'));
    x=[x',zeros(1,R-length(n))];
    disp(x,'the sequence is :');
    for n=0:R-1
        for k=0:R-1
            W(n+1,k+1) = exp(-(%i*2*%pi*k/R)*n);
        end
    end
    X = W*x';
    disp(X,'DFT is, X = ')
//plotting DFT of sequence
m=0:R-1;
clf();
figure(0)
a = gca();
plot2d3(m,abs(X),2) 
plot(m,abs(X),'r.')
a.x_location = 'origin';
a.y_location = 'origin';
poly1 = a . children (1) . children (1) ;
poly1.thickness = 2.5;
xtitle('original sequence','n','x[n]');
