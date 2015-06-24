//syslin//
exec series.sce;
s=%s;
sys1=syslin('c',(s+3)/(s+1))
sys2=syslin('c',0.2/(s+2))
sys3=syslin('c',50/(s+4))
sys4=syslin('c',10/(s))
a=series(sys1,sys2);
b=series(a,sys3);
y=series(b,sys4);
y=simp(y);
disp(y,"C(s)/R(s)=")
