//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 7
//example 7.1
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
V=480;//terminal voltage in volt
p=6;//number of poles
f=60;//frequency in hertz
Pout=30*746;//rated output voltage in volts
R1=0.5;//stator resistance in ohm
R2=0.5;//rotor resistance reffered to stator in ohm
Protational=500;//rotational loss in watt
Pcu=600;//core losses in watt
c=0.05;//cost of energy
t1=100;//time which the motor operates in a week
Pd=Pout+Protational;//developed power in watt
a=1;// the s^2 value from the equation s^2-s+0.039
b=-1;//the s value from the equation s^2-s+0.039
c=0.039;//the constant value from the equation s^2-s+0.039
s1=(-(b)+sqrt((b)^2-(4*a*c)))/(2*a);
s2=(-(b)-sqrt((b)^2-(4*a*c)))/(2*a);//roots to find the value of s from the equation s^2-s+0.03
s=s2;//s1 is very large hence neglected thus slip=s2
a1=120;//constant value in the formula
ns=(a1*f)/p;//synchronous speed in rpm
n=ns*(1-s);
mprintf("\nThe speed of the motor is %d rpm",n)
I2=sqrt((Pd*s)/(3*R2*(1-s)));//motor current in amps
Pwinding=3*I2^(2)*(R1+R2);
Pin=Pd+Pwinding+Pcu;
eta=Pout/Pin;//efficiency of the motor
eta=eta*100;//efficiency in percentage
mprintf("\nThe efficiency of the motor without added resistance is %d percentage",eta)
nnew=0.8*n;//speed after 20% reduction
snew=(ns-nnew)/ns;
rmsnew=nnew/60;//speed in rps
omegadnew=(2*%pi*rmsnew);
rps=n/60;//speed in rps
omega=(2*%pi*rps);
Pdnew=(Pd*omegadnew)/omega;
Radd=R2*((snew-s)/s);//resistance added to reduce 20% of the speed
mprintf("\nThe resistance added to reduce 20 percentage of the speed is %f ohm",Radd)
I2new=sqrt((Pdnew*snew)/(3*(R2+Radd)*(1-snew)))
Pwindingnew=3*I2^(2)*(R1+R2+Radd);
Pinnew=Pdnew+Pwindingnew+Pcu;
Poutnew=Pdnew-Protational;
etanew=Poutnew/Pinnew;
etanew=etanew*100;
mprintf("\nThe efficiency of the motor with added resistance is %d percentage",etanew)
Padd=3*I2^(2)*Radd;
Padd=Padd*10^(-3);
t=100*52;//total hours of operation in one year
C=Padd*t*c;
mprintf("\nThe annual cost of the operating motor is $%f",C)
//The answer may vary due to roundoff error

