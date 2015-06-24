s=%s;
num=1;
den=s*(s+2)*(s+10);
ansys=syslin('c',(num/den));
nyquist(ansys,-1,1000);
