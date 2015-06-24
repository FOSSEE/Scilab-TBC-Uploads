x=[1 2 1 0];
XDFT=dft(x,-1)
//(a)time shift property
y=x;
for i=1:2
    a=y(1);
    for j=1:length(y)-1
        y(j)=y(j+1);
     end
     y(length(y))=a;
end
YDFT=dft(y,-1)
disp(YDFT,'By Time-Shift property DFT of x[n-2] is');  
//(b)flipping property
g=[x(1) x(length(x):-1:2)]
GDFT=dft(g,-1)
disp(GDFT,'By Time reversal property DFT of x[-n] is');  
//(c)conjugation property
p=XDFT;
PDFT=[p(1);p(4:-1:2)];
disp(YDFT,'BY conjugation property DFT of x*[n] is');  
