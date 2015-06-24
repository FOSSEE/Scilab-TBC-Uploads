//Signal and spectrum replication
xn=[2 3 2 1];
XDFT=dft(xn,-1)
yn=[xn xn xn];
YDFT=dft(yn,-1)
YDFT1=3*[XDFT(1:1/3:length(XDFT))];
for i=2:3
    YDFT1(i:3:length(YDFT1))=0;
end
YDFT1(12:-1:11)=0;
disp(YDFT1,'the DFT of x[n/3] is');
hn=[xn(1:1/3:length(xn))]
for i=2:3
    hn(i:3:length(hn))=0;
end
hn(12:-1:11)=0;
hn
HDFT=dft(hn,-1)
HDFT1=[XDFT;XDFT;XDFT];
disp(HDFT1,'the DFT of y[n]=[x[n],x[n],x[n]] is');