clc;
m=60;//kg, mass of package
k=20;//kN/m, spring constant
k=k*1000;//N, conversion into N
xo=120;//mm, initial compression
xo=xo/1000;//m, conversion into meter
x1=600;//mm
x1=x1/1000;//m
v1=2.5;//m/s , velocity of package
delx=40;//mm, additional deflectio of spring
delx=delx/1000;//m, conversion into meter

//Motion from position 1to 2
// kinetic energy at 1
T1=1/2*m*v1^2;//N.m or J

//Position 2 maximum spring deflection
v2=0;//m/s^2
T2=0;//J

//friction force F=uk*N=uk*W
W=m*9.81;//N
x=(x1+delx);//m,
//work is U12f=-F*x=-uk*w*x
//spring force
Pmin=k*xo;//N
Pmax=Pmin+k*delx;//N
// By principle of work and energy
U12e=-1/2*(Pmin+Pmax)*delx;//J
uk=-(T2-T1-U12e)/(W*x);// coefficient of kinetic friction
printf("Coefficient of kinetic friction between package and surface is uk= %.2f \n",uk);
//Motion from position 2 to position 3
//Position 2
v2=0;//m/s^2
T2=0;//J
//Position 3
//T3=1/2*m*v3^2;//N.m or J
U12f=-uk*W*x;//J, 
U23f=U12f;//J 

U23e=-U12e;//J, direction changes

U23=U12f+U23e;//J Total work done 

//Principle of work and energy

v3=sqrt((T2+U23)*2/m);//m/s, 
printf("Velocity of passage as it again passes through same position is V3= %0.3f m/s \n",v3);
