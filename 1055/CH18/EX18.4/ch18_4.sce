//Determine the set of load flow equations at the end of first iteration by using Newton Raphson method.
clear 
clc;
Y=[6.25-%i*18.75 -1.25+%i*3.75 -5+%i*15;-1.25+%i*3.75 2.916-%i*8.75 -1.666+%i*5;-5+%i*15 -1.666+%i*5 6.666-%i*20];
V1=1.06;
G11=6.25;
G12=-1.25;
G21=G12;
G13=-5;
G31=G13;
G22=2.916;
G23=-1.666;
G32=G23;
G33=6.666;
B11=18.75;
B12=-3.75;
B21=B12;
B13=-15;
B31=B13;
B22=8.75;
B23=-5;
B32=B23;
B33=20;
e1=1.06;
e2=1;
e3=1;
f1=0;
f2=0;
f3=0;
P2=e2*(e1*G21+f1*B21) +f2*(f1*G21-e1*B21) +e2*(e2*G22+f2*B22)+f2*(f2*G22-e2*B22)+e2*(e3*G23+f3*B23)+f2*(f3*G23-e3*B23);
P3=-.3
Q2=-.225;
Q3=-.9;
dP2=.2-(-.225);
dP3=-.6-(-.3);
dQ2=0-(-.225);
dQ3=-.25-(-.9);
a1=2*e2*G22+e1*G21+f1*B21+e3*G23+f3*B23;//a1=dP2/de2
a2=2*e3*G33+e1*G31+f1*B31+e3*G32+f2*B32;//a2=dP3/de3
b1=2*f2*G22 +f1*G21-e1*B21+f3*G23-e3*B23;//b1=dP2/df2
b2=20.9;//dP3/df3
a3=e2*G23-f2*B23;//dP2/de3
a4=-1.666;//dP3/de2
b3=-5;//dP2/df3
b4=-5;//dP3/df2
c1=2*e2*B22-f1*G21+e1*B21-f3*G23+e3*B23;//dQ2/de2
c2=19.1;//dQ3/de3
c3=-2.991;//dQ2/df2
c4=-6.966;//dQ3/df3
mprintf("set of linear equations at the end of first iteration are\n");
mprintf("%.3fde2 %.3fde3+ %.3fdf2 %.3fdf3 = %.3f\n",2.846,-1.666,8.975,-5,2.75);
mprintf("%.3fde2 +%.3fde3 %.3fdf2 +%.3fdf3 = %.3f\n",-1.666,6.366,-5,20.90,-.3);
mprintf("%.3fde2  %.3fde3 %.3fdf2 +%.3fdf3 = %.3f\n",8.525,-5,-2.991,1.666,.225);
mprintf("%.3fde2 +%.3fde3+ %.3fdf2 %.3fdf3 = %.3f\n",-5,19.1,1.666,-6.966,.65);
