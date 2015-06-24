//chapter8,Example8_7,pg 183

ug=1.5

uo=1.3

//here reflection occurs both time at surface of denser medium

//condition for distructive interference in reflected side

//2*u*t*cos(r)=(2*n-1)(lam1/2), for nth min.

r=0

//for nth min.

//2*u*t=(2*n+1)(lam1/2), n=0,1,2,3

//for (n+1)th min.

////2*u*t=(2*(n+1)+1)(lam2/2), n=0,1,2,3

lam1=7000*10^-10

lam2=5000*10^-10

//from eq. of nth and (n+1)th min.

t=(2/(4*uo))*((lam1*lam2)/(lam1-lam2))

printf("thickness of layer\n")

printf("t=%.12f m",t)