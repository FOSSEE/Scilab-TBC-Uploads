dv=40*10^-3
nps=1/dv
nbpv=1944
TGrbr=nbpv*25
TGrbaur=TGrbr/2//2 bits/symbol for pi/4 qpsk mod
CBW=30*10^3
BWef=TGrbr/CBW
disp(TGrbr,'total gross bit rate for the RF signal in bps')
disp(TGrbaur,'total gross baud rate for the RF signal in bps')
disp(BWef,'bandwidth efficiency in bps/Hz')
