s=%s;
syms k
H=syslin('c',(k*(s+1)*(s+2))/(s*(s+3)*(s+4)));
evans(H,5)
printf("There are three branches of root locus starting with K=0 and poles s=0,-3,-4.")
printf("As k increases two branches terminate at zeros s=-1,-2 and one at infinity")