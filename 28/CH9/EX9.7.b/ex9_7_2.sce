H=syslin('c',k/(s*(s^2+s+4)))
nyquist(H)
show_margins(H,'nyquist')
mtlb_axis([-5 5 -5 5])
// nyquist plot crosses the axis of reals with intercept of -k/4
// for k/4>1 or k>4
printf("N=-2 as it encircles the point twice in clockwise direction")
printf("P=0 and hence Z=2")
printf("System is unstable for k>4")