clc

p=14 //MPa
t=0.3 //cm
E=200 //GPa
v=0.3
gamma1=77 //kN/m^3
alpha=12*10^-6 // per degree celcius
A=2
T=50 //degree celcius

D=[3.33 0.99 0;0.99 3.3 0;0 0 1.16]
disp(D)
//[D*]=(t*[D])/4*A
[D1]=(10^6*[D])/4*A 
disp(D1)

//solution a: stiffness matrix
xi=0
x1=0
xj=4
x2=4
xm=0
x3=0
yi=-1
y1=-1
yj=-1
y2=-1
ym=1
y3=1

ai=0-4
a1=0-4
disp(ai,a1)
aj=0-0
a2=0-0
disp(aj,a2)
am=4-0
a3=4-0
disp(am,a3)

bi=-1-1
b1=-1-1
disp(bi,b1)
bj=1+1
b2=1+1
disp(bj,b2)
bm=-1+1
b3=-1+1
disp(bm,b3)

k11=(10^6/8)*(3.3*4+1.16*16)
printf('k11=%f\n',k11)
k12=(10^6/8)*(3.3*2*-2+0)
printf('k12=%f\n',k12)
k13=(10^6/8)*(0+1.16*4*-4)
printf('k13=%f\n',k13)
k22=(10^6/8)*(3.3*4+0)
printf('k22=%f\n',k22)
k23=0
printf('k23=%f\n',k23)
k32=0
printf('k32=%f\n',k32)
k21=(10^6/8)*(3.3*2*-2+0)
printf('k21=%f\n',k21)
k31=(10^6/8)*(0+1.16*4*-4)
printf('k31=%f\n',k31)
k33=(10^6/8)*(0+1.16*16)
printf('k33=%f\n',k33)

kuu=[k11 k12 k13;k21 k22 k23;k31 k32 k33]
disp(kuu)
kuv=10^6*[2.15 -1.16 -0.99;-0.99 0 0.99;-1.16 1.16 0]
disp(kuv)
kvv=10^6*[7.18 -0.58 -6.6;-0.58 0.58 0;-6.6 0 6.6]
disp(kvv)
kvu=[2.15 -0.99 -1.16;-1.16 0 1.16;-0.99 0.99 0]
disp(kvu)

ke=[kuu kuv;kvu kvv]
disp(ke)

//solution b:
Fx=0
Fy=0.077 //N/cm^2
Qbe={0,0,0,-0.0308,-0.0308,-0.0308}//N
disp(Qbe)
stp=(sqrt(20)*0.3)*{-2*(1400/sqrt(20)),-4*(1400/sqrt(20))}
disp(stp)
Qp3={0,-420,-420,0,-840,-840}
disp(Qp3)

epsilon=alpha*T
printf('epsilon=%f\n\n',epsilon)
//Qte=[B']*[D]*epsilon*At
Qte=(1/8)*[-2 0 -4;2 0 0;0 0 4;0 -4 -2;0 0 2;0 4 0]*((200*10^5)/0.91)*[1 0.3 0;0.3 1 0;0 0 0.35]*[0.0006;0.0006;0]*(1.2)
printf('Qte=%f in N\n',Qte)

Qe={-5142.85;4742.85;-400;-10285.71;-840.03;9445.67}
disp(Qe,"in N is=")








