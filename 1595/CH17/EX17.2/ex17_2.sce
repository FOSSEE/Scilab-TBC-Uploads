//Television : example 17-2 : pg(822)
bw=5*10^6;//bandwidth
l=428;//horizontal resolution
t=l/(bw*2);//trace time
x=1/30;//time available for a full picture
y=t+10*10^-6;//assuming that 10us is used for horizontal blanking
n=x/y;//no. of horizontal traces
c=600*0.7;//allowing 32 lines for vertical retrace
printf("\ntrace time = %.8f s",t);
printf("\ntotal no. of horizontal traces = %.f lines",n);
printf("\nvertical resolution = %.f lines",c); 

