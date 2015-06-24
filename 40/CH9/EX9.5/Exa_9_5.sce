//Mappings from difference algorithms
//Backward difference mappings
s=%s;z=%z;
ts=1;a=1;
HS=1/(s+a);
HZa=horner(HS,(z-1)/(z*ts))
z1=roots(denom(HZa))//for ts >0 HZa always stable
HZb=horner(HS,(z-1)/ts)
z2=roots(denom(HZb))//stable only for 0<ats<2
HZc=horner(HS,(z^2-1)/(2*z*ts))
z3=roots(denom(HZc))//magnitude of 1 pole is always>1 hence unstable

