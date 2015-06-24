//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-9, Example 1, Page 218
//Title: Vertical Movement of Solids
//==========================================================================================================

clear
clc

//INPUT
umf=0.015;//Velocity at minimum fluidization condition in m/s
ephsilonmf=0.5;//Void fraction at minimum fluidization condition
uo=0.1;//Superficial gas velocity in m/s
delta=0.2;//Bed fraction in bubbles
db=0.06;//Equilibrium bubble size in m
dt=[0.1;0.3;0.6;1.5];//Various vessel sizes in m
ub=[0.4;0.75;0.85;1.1];//Bubble velocity in m/s
Dsv=[0.03;0.11;0.14;0.23];//Reported values of vertical dispersion coefficient

//CALCULATION
n=length(ub);
i=1;
fw1=2;//Wake fraction from Hamilton et al.
fw2=0.32;//Wake fraction from Fig.(5.8)
fw=(fw1+fw2)*0.5;//Average value of wake fraction
while i<=n
    Dsv1(i)=12*((uo*100)^0.5)*((dt(i)*100)^0.9);//Vertical distribution coefficient from Eqn.(3)
    Dsv2(i)=(fw^2*ephsilonmf*delta*db*ub(i)^2)/(3*umf);//Vertical distribution coefficient from Eqn.(12)
    i=i+1;
end

//OUTPUT
printf('\n\t\tVertical dispersion coefficient(m^2/s)');
printf('\nVessel Size(m)');
printf('\tFrom Experiment');
printf('\tFrom Eqn.(3)');
printf('\tFrom Eqn.(12)');
i=1;
while i<=n
    mprintf('\n%f',dt(i));
    mprintf('\t%f',Dsv(i));
    mprintf('\t%f',Dsv1(i)/10^4);
    mprintf('\t%f',Dsv2(i));
    i=i+1;   
end

//====================================END OF PROGRAM ======================================================