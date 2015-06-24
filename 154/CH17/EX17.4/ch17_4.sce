clc
syms t
s=%s;
//Factorizing the denominator
I=(s-10)/((s^2)*(s-%i)*(s+%i));
disp(I,"I(s)=")
//The principal part at s=0 is
//B1/s+B2/s^2
//Taking the limit s->0 to (s-10)/((s-%i)*(s+%i))

B2=-10

//Taking the limit s->0 to (s*(s-10))/(s^2)*(s^2+1)+(10/s)

B1=1

//The principal part at s=%i is
//A/(s-%i)
//Taking the limit s->%i to (s-10)/((s^2)*(s+%i))

A=(-0.5-%i*5)

//As the other co-efficient is conjugate of the above we can write the partial fraction expansion  of I(s)
I=(1/s)-(10/s^2)-(0.5+%i*5)/(s-%i)-(0.5-%i*5)/(s+%i);
//Taking inverse of each term
I1=ilaplace('1/s',s,t)
I2=ilaplace('10/s^2',s,t)
I3=ilaplace('(0.5+%i*5)/(s-%i)',s,t)
I4=ilaplace('(0.5-%i*5)/(s+%i)',s,t)
I=I1-I2-I3-I4
disp(I,"i(t)=")
