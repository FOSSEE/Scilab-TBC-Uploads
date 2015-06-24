                //example 9-56   pg no-636
Z1=8.05+%i*2.156;             //IMPEDANCE
XL=2.155;
W=5000;
L=XL/W;
disp('i)INDUCTANCE (L)   =  '+string (L)+' H')
Z2=4.166-%i*7.216;          //IMPEDANCE
Xc=7.216;
C=1/[W*Xc];
disp('ii)CAPACITOR (C)   =  '+string (C)+' F')
D=11.708;             //DIAMETER
XL1=12.81;
L1=XL1/W;
disp('i) INDUCTANCE (L1)   =  '+string (L1)+' H')
