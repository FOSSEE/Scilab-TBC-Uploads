clc 
//variable initialisation
V=440 //Supply voltage in volts
p=6 //number of poles
f=50 //Supply frequency in Hz
N1=970 //speed in rpm
N2=750 //speed in rpm
N3=850 //speed in rpm
n=3.5//Turns Ratio
R1=0.2
R2=0.15
X1=0.4
X2=0.4
aa1=170//Firing Angle
aa2=140//Firing Angle
s=0.3

//solution
Ns=(120*f)/p
a=-(s/cosd(aa1))
m=(n/a)
s1=(Ns-N2)/Ns
Vd1=(3*sqrt(6)*s1*(V/sqrt(3)))/(%pi*n)
Vd2=(3*sqrt(6)*(V/sqrt(3)*cosd(aa2)))/(%pi*m)
Vd2=-39.05//To avoid further computational errors assuming Vd2
Rs1=R1*((1/n)^(2))
R3=(R2*((1/n)^(2)))
Rd=0
Id=(Vd1+Vd2)/(2*((s1*Rs1)+R3)+Rd)
w=Ns*((2*%pi)/60)
Td=(abs(Vd2)*Id/(s1*w))
s2=(Ns-N1)/N1
Tr=(3/w)*((((V/sqrt(3))^(2))*(R2/s2))/(R1+(R2/s2))^(2)+(s2)^(2))
s3=(Ns-N3)/Ns
Vd3=(3*sqrt(6)*s3*(V/sqrt(3)))/(%pi*n)
X=poly(0,'X')//X=-cos alpha
0==1769.4*X^2-884.02*X+51.5//Polynomial Eqn obtained
X1=(884.02+sqrt((884.02^2)-4*1769.4*51.5))/(2*1769.4)//Roots of polynomial eqn
X2=(884.02-sqrt((884.02^2)-4*1769.4*51.5))/(2*1769.4)//Roots of polynomial eqn
a11=acosd(-X1)
a22=acosd(-X2)
printf('\n\n Turns Ratio of Transformer=%0.1f\n\n',m)
printf('\n\n The Torqye for 750rpm=%0.1f N-m\n\n',Td)
printf('\n\n Firing Angle 1=%0.1f\n\n',a11)
printf('\n\n Firing Angle 2=%0.1f\n\n',a22)
//The answers vary due to round off error
