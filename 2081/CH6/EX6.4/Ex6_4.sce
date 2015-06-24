K=4
N=9//no.of cells in 1 cluster
tbw=60*10^6//total bandwidth
cbwpc=25*10^3//channel bandwidth/simplex channel
n=2//in a duplex link no of channels
dcbw=n*cbwpc//duplex channel bandwidth
N=tbw/dcbw

sbw=10^6//bandwidth for setup channels
N1=sbw/dcbw//total no.of available setup channels
disp(N1,'total no.of available setup channels')

vbw=tbw-sbw
N2=vbw/dcbw//total no. of available voice channels

disp(N2,'total no.of available voice channels')
