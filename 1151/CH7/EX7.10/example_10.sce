s=%s;
num=60;
den=(s+1)*(s+2)*(s+5);
ansys=syslin('c',(num/den));
nyquist(ansys,-1,1000);
printf("No pole on the right half plane i.e.:\n P=0");
printf(" N=0\n Z=0");
disp("hence the system is stable")
