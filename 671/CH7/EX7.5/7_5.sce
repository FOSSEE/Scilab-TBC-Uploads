function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

uo=(4*%pi)*1E-7
fluxg1=0.8E-3

lg1=0.02/100
lg2=0.02/100
lg3=0.025/100
Ag1=2/100*1/100
Ag2=1/100*1/100
Ag3=1/100*1/100

Rg1=lg1/(uo*Ag1)
Rg2=lg2/(uo*Ag2)
Rg3=lg3/(uo*Ag3)
Req=Rg1+parallel(Rg2,Rg3)

MMF=fluxg1*Req

disp(MMF)