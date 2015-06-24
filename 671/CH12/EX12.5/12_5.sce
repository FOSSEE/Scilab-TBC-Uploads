
ns=750
R2=0.5
X2=5
smaxT=R2/X2
n=(1-smaxT)*ns
disp(n)

k=R2/X2
Tmax_by_Tstart=(1+k*k)/2/k
disp(Tmax_by_Tstart)

p=poly([1,-4,1],"k","coeff")
w=roots(p)
R2=w*5
R2ext=R2-0.5

R2total=18.66
smaxT=R2total/X2
R2ext=R2ext(2)
disp(R2ext)
