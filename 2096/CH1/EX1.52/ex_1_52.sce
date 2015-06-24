
//Example 1.52://ARITHEMATIC MEAN,AVERAGE DEVIATION ,STANDARD DEVIATION AND VARAIANCE
clc;
clear;
T=[197,198,199,200,201,202,203,204,205];//temperature in degree celsius
f=[2,4,10,24,36,14,5,3,2];//frequency of occurence
q=[T(1)*f(1),T(2)*f(2),T(3)*f(3),T(4)*f(4),T(5)*f(5),T(6)*f(6),T(7)*f(7),T(8)*f(8),T(9)*f(9)];//
AM=(q(1)+q(2)+q(3)+q(4)+q(5)+q(6)+q(7)+q(8)+q(9))/100;//arithematic mean in mm
for i= 1:9
    qb(i)= T(i)-AM;
end
Q= [qb(1),qb(2),qb(3),qb(4),qb(5),qb(6),qb(7),qb(8),qb(9)];//
AV=(-qb(1)*f(1)-qb(2)*f(2)-qb(3)*f(3)-qb(4)*f(4)+qb(5)*f(5)+qb(6)*f(6)+qb(7)*f(7)+qb(8)*f(8)+qb(9)*f(9))/100;//
SD=sqrt(219.72/100);//standard deviation
V=SD^2;//variance
r1= 0.6745*SD;//PROBABLE ERROR OF ONE READING
rm= r1/(sqrt(100));//probable error of the mean
SGm= SD/10;//standard deviation of the mean
SDg= SGm/(sqrt(2));//standard deviation of the standard deviation
disp(AM,"arithematic mean in degreebcelsius")
disp(AV,"average deviation in degree celsius")
disp(SD,"standard deviation in degree celsius")
disp(V,"variance in degree celsius square")
disp(r1,"probable error of the one reading degree celsius")
disp(rm,"probable error of the mean in degree celsius")
disp(SDg,"standard deviation of the standard deviation")
