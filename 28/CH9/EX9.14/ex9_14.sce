s=%s;
H=syslin('c',10/(s*((0.1*s)+1)*((0.5*s)+1)))
fmin=0.1;
fmax=100;
clf()
black(H,0.1,100)
chart(list(1,0))
gm=g_margin(H)
pm=p_margin(H)
printf("For gain margin of 20 db plot is shifted downwards by 8 db and a phase margin of 24 degrees is obtained if curve is shifted upwards by 3.5 db")





