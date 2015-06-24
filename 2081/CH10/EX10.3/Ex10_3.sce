BW=25*10^3//bandwidth of POCSAG=bandwidth of FLEX system

TDR1=1200// transmission data rate
SPef1=TDR1/BW//spectral efficiency

TDR2=6400
SPef2=TDR2/BW
disp(SPef1,'the spectral efficiency in bps/Hz at 1200 bps transmission data rate in POCSAG paging system')
disp(SPef2,'the spectral efficiency in bps/Hz at 6400 bps transmission data rate in FLEX paging system')

Cinc=TDR2/TDR1
disp(Cinc,'estimating increase in capacity in times')
