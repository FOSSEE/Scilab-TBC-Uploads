//chapter8,Example8_6,pg 183

lam=6300*10^-10

u=1.5

//condition for dark 2*u*t=n*lam

//condition for bright 2*u*t=(2*n-1)(lam/2)

//when t=0 n=0 order dark band will come and at edge 10th bright band will come 

n=10

t=(((2*n)-1)*(lam))/(4*u)

printf("thickness of air film\n")

printf("t=%.12f cm",t)