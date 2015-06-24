clc
clear
//input data
N=16500//The running speed ofradial blade of a centrifugal compressor in rpm
P=4//The total pressure ratio
P01=1//The atmospheric pressure in bar
T01=298//THe atmospheric temperature in K
Dh=0.16//The hub diameter at impeller eye in m
Ca=120//The axial velocity at inlet in m/s
C1=Ca//The absolute velocity at inlet in m/s
sp=0.7//The pressure coefficient
C3=120//The absolute velocity at diffuser exit in m/s
m=8.3//The mass flow rate in kg/s
nc=0.78//The adiabatic total-to-total efficiency
r=1.4//The ratio of specific heats of air
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K

//calculations
T1=T01-((C1^2)/(2*Cp))//The inlet temperature in K
P1=P01*(T1/T01)^(r/(r-1))//The inlet pressure in bar
d1=(P1*10^5)/(R*T1)//The inlet density of air in kg/m^3
Dt=(((4*m)/(3.14*d1*Ca))+(0.16^2))^(1/2)//The eye tip diameter in m
T=((T01)*((P^((r-1)/r))-1))/nc//The overall change in temperature in K
ssps=sp/nc//The product of slip factor and power factor
U2=(T*Cp/ssps)^(1/2)//Peripheral velocity of impeller top at exit in m/s
D2=(U2*60)/(3.14*N)//The impeller tip diameter in m
Uh=(3.14*Dh*N)/60//Peripheral velocity of eye hub in m/s
bh=atand(C1/Uh)//Blade angle at eye hub in degree
Ut=(3.14*Dt*N)/60//Peripheral velocity of eye tip in m/s
bt=atand(C1/Ut)//Blade angle at eye tip in degree
T03=T01+T//Temperature at the exit in K
T3=T03-((C3^2)/(2*Cp))//Exit static temperature in K
P3=(P*P01)*(T3/T03)^(r/(r-1))//Exit static pressure in bar
W=m*Cp*(T03-T01)*10^-6//Power required to drive the compressor in mW
//output
printf('(a)The main dimensions of the impeller are\n    (1)Eye tip diameter is %3.3f m\n    (2)Impeller tip diameter is %3.3f m\n    (3)Blade angle at the eye hub is %3.2f degree\n       Blade angle at the eye tip is %3.2f degree\n(b)    (1)The static exit temperature is %3.1f K\n    (2)The static exit pressure is %3.3f bar\n(c)The power required is %3.3f MW',Dt,D2,bh,bt,T3,P3,W)
