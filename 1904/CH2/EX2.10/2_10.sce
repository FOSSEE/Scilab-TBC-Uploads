//To calculate thirty min annual maximum demand
//Page 59
clc;
clear;

Fd=1.15;
Pi=[1800,2000,2200]; //Demands of various feeders in kW (Real Power)
PF=[0.95,0.85,0.90]; //Power factor of the respective feeders
Dg=sum(Pi)/Fd;
P=Dg;
theta=acosd(PF);

Q=sum(Pi*(tand(theta))')/Fd;
S=sqrt((P^2)+(Q^2));
LD=sum(Pi)-Dg;

//Transformer sizes
Tp=[2500,3750,5000,7500];
Ts=[3125,4687,6250,9375]; 

Ol=1.25; //Maximum overload condition
Eol=Ts*Ol; //Overload voltages of the transformer
Ed=abs(Eol-S); // Difference between the overload values of the transformers and the P value of the system

[A,k]=gsort(Ed); // To sort the differences and choose the best match

T=[Tp(k(4)),Ts(k(4))]; //Suitable transformer

g=poly(0,'g');
X=(1+g)-nthroot(2,10); //To find out the fans on rating
R=roots(X);
g=R*100;

n=poly(0,'n');
Sn=9375; // Rating of the to be installed transformer
// Equation (1+g)^n * S = Sn
// a=(1+g)
// b=Sn/S

a=1+R;
b=Sn/S;
n=log(b)/log(a);

printf('a) The 30 mins annual maximum deman on the substation transformer are %g kW and %g kVA respectively\n',P,S)
printf(' b) The load diversity is %g kW\n',LD)
printf(' c) Suitable transformer size for 25 percent short time over loads is %g/%g kVA\n',T(1),T(2))
printf(' d) Fans on rating is %g percent and it will loaded for %g more year if a 7599/9375 kVA transformer is installed\n',g,ceil(n))
