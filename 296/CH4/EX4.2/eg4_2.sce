p0 = 10^15;
ni = 10^6;
n0 = ni^2/p0;
disp(n0,"Minority electron concentration (in per cubic centimeter)=" )
dn = 10^14;
dp = 10^14;
tn = 10; //in nanoseconds
tp = tn;
t = 0:10:50;
del_n = dn*exp(-t/tn);
del_p = dp*exp(-t/tp);
p = p0 + del_p;
n = del_n; //since n0 is negligible
subplot(121);
plot(t,log(p));
plot(t,log(n));
subplot(122);
plot(t,p);
plot(t,n);