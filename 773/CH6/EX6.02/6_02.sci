//syslin//
exec parallel.sce;
s=%s;
sys1=syslin('c',1/s)
sys2=syslin('c',2/(s+1))
sys3=syslin('c',3/(s+3))
a=parallel(sys1,sys2);
y=parallel(a,sys3);
y=simp(y);
disp(y,"C(s)/R(s)=")
