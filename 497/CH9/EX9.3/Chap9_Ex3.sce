//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-9, Example 3, Page 232
//Title: Design of Baffle Plates
//==========================================================================================================

clear
clc

//INPUT
Gsup=1.5;//Solid interchange rate in kg/m^2plate s
dor=19.1;//Orifice diameter in mm
dp=210;//Particle size in micrometer
uo=0.4;//Superficial gas velocity in m/s
fopen=[0.12;0.17;0.26];//Open area fraction 
pi=3.14;

//CALCULATION
n=length(fopen);
i=1;
while i<=n
    uor(i)=uo/fopen(i);//Gas velocity through the orifice
    ls1(i)=Gsup/fopen(i);//Flux of solids through the holes
    i=i+1;
end
ls2=[12;20;25];//Flux of solids through holes from Fig.13(c) for different uor values
fopen1=0.12;//Open area fraction which gives reasonable fit
lor=sqrt(((pi/4)*dor^2)/fopen1);//Orifice spacing

//OUTPUT
printf('\nfopen');
printf('\t\tuor(m/s)');
printf('\tls from Eqn.(18)');
printf('\tls from Fig.13(c)');
i=1;
while i<=n
    mprintf('\n%f',fopen(i));
    mprintf('\t%f',uor(i));
    mprintf('\t%f',ls1(i));
    mprintf('\t\t%f',ls2(i));
    i=i+1;   
end
mprintf('\n\nFor square pitch, the orifice spacing should be %fmm',lor);

//====================================END OF PROGRAM ======================================================