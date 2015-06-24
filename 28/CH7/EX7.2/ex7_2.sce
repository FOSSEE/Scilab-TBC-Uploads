s=%s;
syms k
H=syslin('c',1+(k/(s*(s+1)*(s+2))));
evans(H,5)
printf("The branches of root locus starts with K=0 and poles s=0,-1,-2.")
printf("Since there is no open loop zero the branches terminate at infinity")
