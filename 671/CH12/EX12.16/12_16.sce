V=400
Pmout=5000
Prl=285
Pm=Pmout+Prl

s=1-1445/1500
smaxT=1-900/1500
R2=(1/s-1)*V*V/Pm/(1/s^2+1/smaxT^2)
X2=R2/smaxT
ws=2*%pi*1500/60
Tmax=V*V/ws/2/X2
disp(Tmax)
