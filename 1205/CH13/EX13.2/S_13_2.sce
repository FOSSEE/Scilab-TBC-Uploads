clc;

mA=200;//kg, mass of block A
mB=300;//kg, mass of block B
x=2;//m, displacement of block A
uk=0.25;// Coefficient of kinetic friction

g=9.81;//m/s^2, Acceleration due to gravity
WA=mA*g;//N, Weight of block A
WB=mB*g;//N, Weight of block B
FA=uk*WA;//N, frictional force
//By principle of work and energyon block A
//0+Fc*x-FA*x=1/2*mA*v^2
//By principle of work and energyon block B
//0+WB*x-Fc*x=1/2mB*v^2

//Adding above equations we get

//WB*x-FA*x=1/2*(mA+mB)*v^2, therefore
v=sqrt((WB*x-FA*x)*2/(mA+mB));//m/s, velocity of block A

printf("Therfore  velocity of block A after it has been moved 2 mm is v= %0.2f m/s \n",v);
