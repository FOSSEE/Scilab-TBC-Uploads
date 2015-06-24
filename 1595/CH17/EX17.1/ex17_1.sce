//Television : example 17-1 : pg(822)
bw=5*10^6;//bandwidth
t=53.5*10^-6;//time allocated for each visible trace
T=2*bw*t;//increase in horizontal resolution
mprintf("\nThe %.8f s allocated for each visible trace could now a develop a maximum %.f Hz video signal",t,bw);
printf("\nThus, the total number of vertical lines resolvable is %.f lines",T);