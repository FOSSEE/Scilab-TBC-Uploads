

//example 10.4
//check section for:
//Stability of d/s slope against steady seepage
//Sloughing of u/s slope against sudden drawdown
//Stability of the foundation against shear
//Seepage through body of dam
clc;funcprot(0);
//given
//Dimensions
H=20;            //Heigth of dam
Bt=6;            //top width of dam
s1=4;            //u/s slope
s2=3;            //d/s slope
fb=2;            //free board
//Properties of materials of dam
gamma_d=17.27;       //dry density
wc=0.15;             //optimum water content
gamma_s=21.19;       //saturated density
gamma_w=9.81;        //unit weigth of water
wavg=19.62;          //average unit weigth under seepage
theta=26;            //average angle of internal friction(degree)
co=19.13;            //average cohesion
K=5D-4;              //coefficient of permeability
//properties of foundation materials
gamma_f=17.27;      //average unit weigth
cof=47.87;          //average cohesion
fi=8;               //average angle internal friction
t=6;                //thickness of clay
FOSp=1.5;           //permissible factor of safety of slope
PS=8D-6;            //permissible seepage


//(a) Stability of d/s slope against steady seepage
An=302.4;            //area of N diagram
At=91.2;             //area  of T diagram
Au=98.4;             //area of U diagram
Le=60;               //length of arc
SumN=An*gamma_s;
SumT=At*gamma_s;
SumU=Au*gamma_w;
F=((Le*co)+(SumN-SumU)*tand(theta))/SumT;
F=round(F*100)/100;
mprintf("Part(a):")
mprintf("\nFactor of safety for slope=%f.",F);
mprintf("\nSafe");

//(b) Sloughing of u/s slope against sudden drawdown
h1=15;
b=80;
P=gamma_s*H^2*tand(45-(theta/2))^2/2+gamma_w*h1^2/2;
sav=P/b;
smax=2*sav;
Ne=(gamma_s-gamma_w)*b*H/2;
R=Ne*tand(theta)+co*b;
fs=R/P;
fs=round(fs*100)/100;
mprintf("\n\nPart(b):")
mprintf("\nFactor of safety w.r.t average shear=%f.",fs);
mprintf("\nSafe");
sr=0.6*H*(gamma_s-gamma_w)*tand(theta)+co;
FS=sr/smax;
FS=round(FS*100)/100;
mprintf("\n\nFactor of safety w.r.t maximum shear=%f.",FS);
mprintf("\nSafe");

//(c) Stability of the foundation against shear
h1=26;
h2=6;
gamma_m=(wavg*(h1-h2)+gamma_f*h2)/h1;
l=(gamma_m*h1*tand(fi)+cof)/(gamma_m*h1);
fi1=atand(l);
P=(h1^2-h2^2)/2*gamma_m*tand(45-(fi1/2))^2;
sav=P/b;
smax=2*sav;
s1=cof+gamma_f*h2*tand(fi);
s2=cof+gamma_m*h1*tand(fi);
as=(s1+s2)/2;
fs=as/sav;
fs=round(fs*100)/100;
mprintf("\n\nPart(c):")
mprintf("\nFactor of safety w.r.t overall shear=%f.",fs);
mprintf("\nSafe");

gamma_av=(wavg*0.6*H+gamma_f*h2)/((0.6*H)+h2);
s=cof+gamma_av*0.6*H*tand(fi);
fs=s/smax;
fs=round(fs*100)/100;
mprintf("\n\nFactor of safety w.r.t overall shear=%f.",fs);
mprintf("\nUnsafe");

//(d) Seepage through body of dam
s=2;     //measured
q=K*s*100000/100;
mprintf("\n\nPart(d):")
mprintf("\n Seepage through body of dam=%fD-5 cumecs/m length of dam",q);

