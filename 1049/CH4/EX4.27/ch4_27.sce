clear;
clc;
R1=1000;
C=.5*10^-6;
f=50;
w=2*%pi*f;
V_s=230;
X_c=1/(w*C);
v_c=30;
R=0;
Z=sqrt((R+R1)^2+X_c^2);
phi=atand(X_c/(R+R1));
I1=V_s/(Z*complex(cosd(-phi),sind(-phi)));
V_c=I1*X_c*complex(cosd(-90),sind(-90));
a=abs(V_c);    //magnitude of V_c
b=-atand(imag(V_c)/real(V_c));    //argument of V_c
//v_c=sqrt(2)*a*sind(a1-b)
a1=asind(v_c/(sqrt(2)*a))+b;    printf("min angle=%.1f deg",a1);

R=25000;
Z=sqrt((R+R1)^2+X_c^2);
phi=atand(X_c/(R+R1));
I1=V_s/(Z*complex(cosd(-phi),sind(-phi)));
V_c=I1*X_c*complex(cosd(-90),sind(-90));
a=abs(V_c);    //magnitude of V_c
b=-atand(imag(V_c)/real(V_c));    //argument of V_c
//v_c=sqrt(2)*a*sind(a2-b)
a2=asind(v_c/(sqrt(2)*a))+b;    printf("\nmax angle=%.2f deg",a2);
