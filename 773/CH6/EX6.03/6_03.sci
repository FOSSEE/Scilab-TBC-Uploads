//syslin//
exec series.sce;
s=%s;
sys1=syslin('c',3/(s*(s+1)))
sys2=syslin('c',s^2/(3*(s+1)))
sys3=syslin('c',6/(s))
a=(-1)*sys3;  
b=series(sys1,sys2);
y=b/.a   // feedback operation
y=simp(y)
disp(y,"C(s)/R(s)=")
