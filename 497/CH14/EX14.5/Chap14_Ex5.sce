//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-14, Example 5, Page 353
//Title: Elutriation and Attrition of Catalyst
//==========================================================================================================

clear
clc

//INPUT
dpi=[0.17;0.15;0.13;0.11;0.09;0.07;0.05;0.03;0.01];//Mean size of particles in mm
a=[0;0.95;2.45;5.2;10.1;23.2;35.65;20.0;2.45]*10^-2;//Feed composition Fo(dpi)/Fo
y=[0;0;0;0;0;0;0.625;10.225;159.25]*10^-6;//Elutriation and cyclone efficiency k(dpi)(1-eta(dpi))
F=0.01;//Rate at which solids are withdrawn in kg/s
W=40000;//Weight of bed in kg
dp1=0.11//Initial size in mm
dp2=0.085;//Size after shrinking in mm
dpmin=0.01;//Minimum size in mm
deldpi=2*10^-2;//Size inerval in mm
t=20.8;//Time in days
si=1;

//CALCULATION
kdash=log((dp1-dpmin)/(dp2-dpmin))/(t*24*3600);//Rate of particle shrinkage from Eqn.(24)
n=length(dpi);
m=2;
Fo=0.05;//Initial value of Fo
F1(m-1)=0;
s=0;
c=0;
t=1E-6;
while m<=n
    R(m)=-kdash*(dpi(m)-dpmin);//Rate of size change
    x(m)=(a(m)*Fo-W*R(m-1)*F1(m-1)/deldpi)/(F+(W*y(m))-(W*R(m)/deldpi)-3*W*R(m)/dpi(m));//Eqn.(34)
    F1(m)=x(m)*F;
    c=c+x(m);
    m=m+1;
    if abs(c-1)<t then break
    end
    Fo=Fo+0.0001;//Incrementing Fo
end  

//OUTPUT
mprintf('\nFeed rate with deldpi=%fmm is %fg/hr',deldpi,Fo);
i=1;
mprintf('\nBed composition');
while i<=n
    printf('\n%f',x(i)*100);
    i=i+1;
end

//====================================END OF PROGRAM ======================================================