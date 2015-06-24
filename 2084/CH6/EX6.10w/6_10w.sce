//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 6.10w
//calculation of mimimum and maximum values of m(mass) and the acceleration if given a gentle push

//given data
mus=.28//the value of coefficient of static friction between the block and the surface
muk=.25//the value of coefficient of kinetic friction between the block and the surface
M=2//mass(in kg) of one block
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
//T=(M*g*(1-mus))/sqrt(2)................taking components along incline for block1......(1)
//T=(M*g*(1+mus))/sqrt(2)................taking components along incline for block2......(2)
//from above equations,we get
m1=((1-mus)*M)/(1+mus)//minimum value of m...............................................(3)
m2=((1+mus)*M)/(1-mus)//maximum value of m obtained by taking reverse direction of friction in above equations

//(M*g/sqrt(2)) - T = M*a.........newton's second law for M block........................(4)
//T - (m*g/sqrt(2)) = m*a.........newton's second law for m block........................(5)
//adding equations (4) and (5)
//((M*g*(1-muk))/sqrt(2)) - ((m*g*(1+muk))/sqrt(2)) = (M+m)*a
a=(((M*(1-muk))-(m1*(1+muk)))*g)/(sqrt(2)*(M+m1))//calculating acceleration for minimum value of m if gently pushed......given

printf('the minimum value of m for which the system remains at rest is %3.2f kg',m1)
printf('\nthe maximum value of m for which the system remains at rest is %3.2f kg',m2)
printf('\nthe acceleration of either block for minimum value of m and if gently pushed up the incline is %3.2f m/s^2',a)
