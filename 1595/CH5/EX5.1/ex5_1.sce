//Frequency Modulation : Transmission : example 5-1 : (pg 209)
v=25*10^-3;
f=750;//deviation constant
vg=10*10^-3;//deviation constant
pfd=v*(f/vg);//positive frequency deviation
nfd=-v*(f/vg);//negative frequency deviation
//part(a)
printf("\npositive frequency deviation = %.f Hz",pfd);
printf("\nnegative frequency deviation = %.f Hz",nfd);
mprintf("\nThe total deviation is written as +-2.25kHz for the given input signal level");
//part(b)
printf("\nThe input frequency (fi) is 400 Hz therefore, by eqn \nfout = fc+kei");
mprintf("\nThe carrier wil deviate %.f Hz and %.f Hz at a rate of 400 Hz",pfd,nfd);
