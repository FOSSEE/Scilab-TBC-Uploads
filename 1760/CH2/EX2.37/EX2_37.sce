    //EXAMPLE  2-37    PG  NO-88
Xc=4;
XL=6;
R=2;                      //RESISTANCE
v=8.48+%i*30;;
Z=R+%i*(XL-Xc);             //IMPEDANCE
V=v;
I=V/Z;                  //CURRENT
VL=%i*I*XL;
Vc=-%i*I*Xc;
P=V*I*0.707;                //ACTIVE POWER
disp('i) Active Power  =  '+string(P)+'  W');
disp('ii) Impedance = '+string(Z)+' ohm');
disp('iii) Current is   = '+string(I)+' A');
disp('iv) VL is   = '+string(VL)+' V');
disp('v)Vc   is    = '+string(Vc)+' V');

