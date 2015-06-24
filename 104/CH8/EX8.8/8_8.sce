//angle of departure and angle of arrivals
s=%s
sys=syslin('c',1/(s*(s+3)*(s^2+2*s+2)))
clf
evans(sys)
printf("angle of arrival and departure of root loci on the real axis are not affected by complex poles and zeroes of G(s)H(s)")

