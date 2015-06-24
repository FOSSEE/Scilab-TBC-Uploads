
ns=120*50/20
sfl=1-292.5/ns

R2=0.12
X2=1.12
smaxT=R2/X2
disp(smaxT)

Tmax_by_Tfl=0.5/X2/(R2/sfl/((R2/sfl)^2+X2^2))
disp(Tmax_by_Tfl)
