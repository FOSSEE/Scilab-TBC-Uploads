disp("Peo=nc^2/Ne");
Ne1=10^18;
nc=1.5*10^10;
Peo1=nc^2/Ne1;
printf('\n The value of Peo when Ne=10^18 is %f/cm^3',Peo1);
Ne2=10^19;
Peo2=nc^2/Ne2;
printf('\n The value of Peo when Ne=10^19 is %f/cm^3',Peo2);
ni=1.5*10^10;
a=0.026;  //say a=K*T
Eg=0.030;  //Eg=ΔEg
Peo3=(ni^2)*(exp(Eg/a))/Ne1;  //considering the effect of bandgap narrowing
printf('\n The value of Peo considering the effect of bandgap narrowing is %f/cm^3',Peo3);