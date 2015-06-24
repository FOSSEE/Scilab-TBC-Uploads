K=4
tbw=20*10^6//total bandwidth
cbwpc=25*10^3//channel bandwidth/simplex channel
n=2//in a duplex link no of channels
dcbw=n*cbwpc//duplex channel bandwidth
N=tbw/dcbw
N1=N/K
disp(N,'total no. of duplex channels')
disp(N1,'no.of channels per cell site')
