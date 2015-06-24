//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-10, Example 1, Page 253
//Title: Estimate Interchange Coefficients in Bubbling Beds
//==========================================================================================================

clear
clc

//INPUT
umf=[0.01;0.045];//Velocity at minimum fluidization condition in m/s
ephsilonmf=[0.5;0.5];//Void fraction at minimum fluidization condition
D=[2E-5;7E-5];//Diffusion coefficient of gas in m^2/s
g=9.81;//Acceleration due to gravity in m/s^2

//CALCULATION
db=[5;10;15;20];
n=length(umf);
m=length(db)'
for i = 1:n
    for j = 1:m
            Kbc(i,j)=4.5*(umf(i)/db(j))+5.85*((D(i)^0.5*g^0.25)/db(j)^(5/4));//Gas interchange coefficient between bubble and cloud from Eqn.(27)
            Kce(i,j)=6.77*((D(i)*ephsilonmf(i)*0.711*(g*db(j))^0.5)/db(j)^3)^0.5;//Gas interchange coefficient between emulsion and cloud from Eqn.(34)
            Kbe(i,j)=(Kbc(i,j)*Kce(i,j))/(Kbc(i,j)+Kce(i,j));//Gas interchange coefficient between bubble and emulsion from Eqn.(14)
    end;
end

//OUTPUT
i=1;
j=1;
k=1;
while k<=m*n
    printf('\n\t\tKbc for fine particles and He');
    printf('\tKbc for coarse particles and ozone');
    printf('\tKbe for fine particles and He');
    printf('\tKbe for coarse particles and ozone');
    while j<=m
        mprintf('\ndb=%fm',db(j)*10^-2);
        while i<=n
            mprintf('\t%f',Kbc(k));
            mprintf('\t\t\t%f',Kbe(k));
            i=i+1;   
            k=k+1;
            printf('\t\t\t');
        end
    i=1;
    j=j+1;
    end
end
Kbe=Kbe';
Kbc=Kbc';
plot2d("ll",db,[Kbc Kbe]);
xtitle('Plot of Kbc,Kbe vs db','db',['Kbc','Kbe']);
printf('\nComparing the points with the plot of Kbc,Kbe vs db in Fig.(12), we can conlcude the following:');
printf('\nKbc for fine particles and helium: line 2 in Fig.(12)');
printf('\nKbc for coarser particles and ozone: line 3 in Fig.(12)');
printf('\nKbe for fine particles and helium: line 4 in Fig.(12)');
printf('\nKbe for coarser particles and ozone: line 5 in Fig.(12)');

//====================================END OF PROGRAM ======================================================