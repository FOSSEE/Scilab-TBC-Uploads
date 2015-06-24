// To find the voltage at the load end of the transformer when load is drawing transformer current

clc;

I=20/2;                    //rated load current(hv side)

Z1=[.25,1.4];                    //impedence of feeder    (REAL,IMAGINERY)
Z2=[.82,1.02];                   //impedence of transformer    (REAL,IMAGINERY)

Z=Z1+Z2;
disp(Z,'Z(ohm)');

pf=.8;
phi=acosd(pf);

//from phasor diagram
      
R=Z(1);
X=Z(2);
AF=I*X*cosd(phi);
FE=I*R*sind(phi);
AE=AF-FE;
OA=2000;
OE=sqrt(OA^2-AE^2);                                                        

BD=I*R*cosd(phi);
DE=I*X*sind(phi);
BE=BD+DE;
V1=OE;   disp(V1,'V1(V)'); 
V2=V1-BE;    disp(V2,'V2(V)');

loadvol=V2/10;                        //referred to LV side
disp(loadvol,'load voltage(V)');
