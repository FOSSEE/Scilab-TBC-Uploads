//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-10, Example 2, Page 254
//Title: Compare the Relative Importance of Kbc and Kce
//==========================================================================================================

clear
clc

//INPUT
D=0.69;//Diffusion coefficient of gas in cm^2/s
umf=1.0;//Velocity at minimum fluidization condition in cm/s
ephsilonmf=0.5;//Void fraction at minimum fluidization condition
db=[5;15];//Equilibrium bubble size in cm
g=980;//Acceleration due to gravity in cm/s^2

//CALCULATION
n=length(db);
i=1;
while i<=n
    Kbc(i)=4.5*(umf/db(i))+5.85*((D^0.5*g^0.25)/db(i)^(5/4));//Gas interchange coefficient between bubble and cloud from Eqn.(27)
    Kce(i)=6.77*((D*ephsilonmf*0.711*(g*db(i))^0.5)/db(i)^3)^0.5;//Gas interchange coefficient between emulsion and cloud from Eqn.(34)
    Kbe(i)=(Kbc(i)*Kce(i))/(Kbc(i)+Kce(i));//Gas interchange coefficient between bubble and emulsion from Eqn.(14)
    e(i)=(Kce(i)-Kbe(i))/Kbe(i);//Error when minor resistance is ignored
    i=i+1;
end

//OUTPUT
printf('\ndb(cm)');
printf('\t\tCalculated Kbc');
printf('\tCalculated Kce');
printf('\t\tKbe from Eqn.(14)');
printf('\tErron when minor resistance is ignored (in percentage)');
i=1;
while i<=n
    mprintf('\n%f',db(i));
    mprintf('\t%f',Kbc(i));
    mprintf('\t%f',Kce(i));
    mprintf('\t\t%f',Kbe(i));
    mprintf('\t\t%f',e(i)*100);
    i=i+1;   
end

//====================================END OF PROGRAM ======================================================