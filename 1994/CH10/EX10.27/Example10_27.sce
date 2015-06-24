//Chapter-10,Example10_27,pg10_67
P=4
f=50
Po=8*10^3
//Tst=1.5*Tfl and Tm=2*Tfl
//(R2^2)+((sfl*X2)^2)=1.5*sfl*((R2^2)+(X2^2)).................(1)
//(R2^2)+((sfl*X2)^2)=2*(sfl/sm)*((R2^2)+((sm*X2)^2))..........(2)
//dividing (1) and (2) by (X2^2) on both sides and R2/X2=sm
//(sm^2)+(sfl^2)=5*(1+(sm^2))*sfl.............(3)
//(sm^2)+(sfl^2)=2*(2*(sm^2))*(sfl/sm)=4*sm*sfl...........(4)
//dividing (3) by (4)
//(sm^2)-2.667*sm+1=0
a=1
b=-2.667
c=1
sm=(-b-sqrt((b^2)-4*a*c))/(2*a)
Ns=120*f/P
//substituting sm in (4)
//(sfl^2)-1.8052*sfl+0.2036=0
a=1
b=-1.8052
c=0.2036
sfl=(-b-sqrt((b^2)-4*a*c))/(2*a)
N=Ns*(1-sfl)
Nm=Ns*(1-sm)
printf("full load speed\n")
printf("N=%.2f r.p.m\n",N)
printf("speed at max. torque\n")
printf("Nm=%.2f r.p.m\n",Nm)
