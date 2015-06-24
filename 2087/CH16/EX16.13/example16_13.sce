

//example 16.13
//design a lined canal
clc;funcprot(0);
//given
Q=100;              //discharge
S=1/2500;           //bed slope
V=2;                //maximum permissible velocity
n=0.013;            //manning n
s=1.25;             //side slope

A=Q/V;
//from manning formula  V=(R^2/3*S^1/2)/N;
R=(V*n/S^0.5)^1.5;
P=A/R;

//now using the equation of area and perimeter of trapezoid
//area=D(B+2.5D)
//perimeter=B+3.2D;
//we get
y=poly([50,-33.73,1.95],'x','c');
D=roots(y);
//we get D=15.660087 and 1.6373489
//taking
D=1.6373489;
B=P-3.2*D;
B=round(B*10)/10;
D=round(D*100)/100;
mprintf("required bed width=%f m.",B);
mprintf("\nrequired bed depth=%f m",D);
