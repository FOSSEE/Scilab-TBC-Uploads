syms xv Qf Qo Cf Co V Qw Kv 
Qo=Qw+Qf;
// rate of salt inflow
mi=Qf*Cf;
// rate of salt outflow
mo=Qo*Co;
// rate of salt accumulation
ma=diff(V*Co,t);
mi=ma+mo;
Qf*Cf=V*diff(Co,t)+Qo*Co;
Qf=Kv*xv;
K=Cf*Kv/Qo;
G=V/Qo;
G*diff(Co,t)+Co=K*xv;
// taking laplace
G*s*Co+Co=K*xv;
// transfer function= Co/xv
Co/xv=K/(G*s+1);

