clc;
warning("off");
printf("\n\n example10.8 - pg439");
// given
mu=6.72*10^-4;  //[lb/ft*sec] - viscosity
p=62.4;  //[lb/ft^3] - density
S=0.03322;  //[ft^2] - flow area
d=0.206;  //[ft]
e=1.5*10^-4;  // absolute roughness for steel pipe
ebyd=e/d;
Nre=10^5;
// friction factor as read from fig in book for the given reynolds no. and relative roughness is-
f=0.0053;
U=(Nre*mu)/(p*d);
Q=U*S;
gc=32.174;
// (a) equivalent length method
deltapbyL=f*(4/d)*(p*(U^2))*(1/(2*gc))*(6.93*10^-3);
// using L=Lpipe+Lfittings+Lloss;
Lfittings=2342.1*d;
kc=0.50;  //  due to contraction loss
ke=1;  // due to enlargement loss
Lloss=(kc+ke)*(1/(4*f))*d;
Lpipe=137;
L=Lpipe+Lfittings+Lloss;
deltap=deltapbyL*L;
patm=14.696;  //[psi] - atmospheric pressure
p1=patm+deltap;
printf("\n\n (a)The inlet pressure is\n p1=%f psi",p1);
// (b) loss coefficient method
// using the equation deltap/p=-(Fpipe+Ffittings+Floss)
L=137;
kfittings=52.39;
sigmaF=((4*f*(L/d))+kc+ke+kfittings)*((U^2)/(2*gc));
deltap=(p*sigmaF)/(144);
p1=patm+deltap;
printf("\n\n (b)The inlet pressure is \n p1=%f psi",p1);
printf("\n\n Computation of the pressure drop by the loss coefficient method differs from the equivalent length method by less than 1 psi");



