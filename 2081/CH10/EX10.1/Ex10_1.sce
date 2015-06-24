BW=12.5*10^3
TDR1=512//transmission data rate
SPef1=TDR1/BW//spectral efficiency

TDR2=1200
SPef2=TDR2/BW

TDR3=2400
SPef3=TDR3/BW
disp(SPef1,'the spectral efficiency in bps/Hz at 512 bps transmission data rate')
disp(SPef2,'the spectral efficiency in bps/Hz at 1200 bps transmission data rate')
disp(SPef3,'the spectral efficiency in bps/Hz at 2400 bps transmission data rate')
