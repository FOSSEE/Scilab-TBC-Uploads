//Chapter 4: Selection of Motor Power Rating
//Example 3
clc;

//Variable Initialization
P1=400     //load in kW
P2=500     //load in KW
Pmax=P2

//Duty Cycles in minutes
t1=5       //load rising from 0 to P1 
t2=5       //uniform load of P2 
t3=4       //regenerative power equal to P1
t4=2       //motor remains idle

//Solution
deff('y=f(x)','y=(400/5*x)**2')
I=intg(0,5,f)
P11=sqrt(I/t1)
x=P11**2*t1+P2**2*t2+P1**2*t3
t=t1+t2+t3+t4    //total time
Prms=sqrt(x/t)

y=2*Prms
if P2<y then
    mprintf(" Hence Pmax:%d kW is less than twice Prms:%.1f kW",Pmax,2*Prms)
end
mprintf("\n Hence Motor rating is: %d kW\n",Prms)
