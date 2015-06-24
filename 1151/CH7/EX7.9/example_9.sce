s=%s;
num=(1-s);
den=(s+1);
ansys=syslin('c',(num/den));
nyquist(ansys,-1,1000);
printf("When K>1:nobopen loop pole is on right half of the s plane P=0");
printf("number of encirclement of point(-1+j0)N=1\n N=Z-P\n1=Z-0\n Z=1");
printf("hence the system is unstable")
printf("When K<1: P=0");
printf(" N=0\n Z=0");
printf("hence the system is stable")
