//chapter8,Example8_4,pg 182

i=45*(%pi/180)

u=1.33

r=asin(sin(i)/u)

r=r*(180/%pi)

//for bright fringe 2*u*t*cos(r)=(2*n+1)(lam/2)

//for minimum thickness n=0

lam=5000*10^-8

t=lam/(4*u*t*cos(r))

printf("min. thickness of film\n")

disp(t)