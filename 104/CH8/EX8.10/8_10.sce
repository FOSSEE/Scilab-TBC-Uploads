//intersection of root loci with real axis
s=%s
sys=syslin('c',1/(s*(s+3)*(s^2+2*s+2)))
clf
evans(sys)
K=kpure(sys)
disp(K,"value of K where RL crosses jw axis=")
p=poly([K 6 8 5 1],'s','coeff')
x=roots(p)
x1=clean(x(1,1))
x2=clean(x(2,1))
disp(x2,x1,"crossover points on jw axis=")