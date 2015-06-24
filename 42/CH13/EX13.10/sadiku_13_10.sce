clear;
clc;
c=3*(10)^8, f=3*(10)^9,Aet=9,r1=1.852*(10)^5,r2=4*r1,r3=5.556*10^5,Pr=200*(10)^3,a=20;
l=c/f;
Gdt=4*%pi*Aet/(l*l);
P1=Gdt*Pr/(4*%pi*r1*r1);
P2=Gdt*Pr/(4*%pi*r2*r2);
disp(P1*1000,'Signal power density at 100nmile in mWatt');
disp(P2*1000,'Signal power density at 400nmile in mWatt');
Pr=Aet*a*Gdt*Pr/(4*%pi*r3*r3)^2;
disp(Pr*10^12,'Power of reflected signal in picoWatt');

