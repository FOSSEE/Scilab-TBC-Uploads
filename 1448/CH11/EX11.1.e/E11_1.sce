clc
//Initialization of variables
S=[10 20 40 80 120 180 300]
v=[0.32 0.58 0.9 1.22 1.42 1.58 1.74]
//calculations
bys=1000/S
byv=1/v
n=size(S)
x=bys
y=byv
disp("From graph,")
m=26.17
c=0.476
//Sx =sum(x);
//Sxx =sum(x.*x);
//Sy =sum(y);
//Syy =sum(y.*y);
//Sxy =sum(x.*y);
//m =(n*Sxy-(Sx*Sy))/(n*Sxx-(Sx*Sx));
//c =(Sy/n)-(m*Sx/n);
//disp(m)
//disp(c)
//y=zeros(7)
//for i =1:n(1)
//    y(i)=m*bys(i)+c
//end

//clf();
//plot(x,y);
//xtitle("","x ","y ");
//legend(["measure points", "fitted curve"], 2);
vmax=1/c
Km=m/c
//results
printf("Max. velocity  = %.2f mumol/L s",vmax)
printf("\n Michaelis constant = %.1f mumol/L",Km)
