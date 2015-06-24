ImaipNodB=6
ImaipNo=10^(ImaipNodB/10)
NopImai=1/ImaipNo
SINRdB=8
SINR=10^(SINRdB/10)//signal to noise ratio 
Q=128//total spreading factor
a=.55//relative intercellular interfernce factor
M=Q/((1+a)*(1+NopImai)*SINR)
disp(M,'users per cell')
