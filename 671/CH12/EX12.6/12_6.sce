
Tmax=200
Tstart=80

p=poly([1,-2*Tmax/Tstart,1],"smaxT","coeff")
smaxT=roots(p)
smaxT=smaxT(2)
disp(smaxT)


p=poly([1,-4,1],"w","coeff")
w=roots(p)
sfl=smaxT/w(1)
disp(sfl)

ratio=sqrt(((smaxT/sfl)^2+1)/(smaxT^2+1))
disp(ratio)

p=poly([1,-((smaxT/sfl)^2+1)*sfl,smaxT^2],"k","coeff")
k=roots(p)
k=k(2)
disp(k)
