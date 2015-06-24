clear    
clc
disp('Exa-6.1');
R=0.1;Z=79; x=1.44;          //x=e^2/4*pi*epsi0
zkR2=2*Z*x/R                // from zkR2= (2*Z*e^2)*R^2/(4*pi*epsi0)*R^3
mv2=10*10^6;                //MeV=>eV
theta=sqrt(3/4)*zkR2/mv2;     //deflection angle
theta=theta*(180/%pi);        //converting to degrees
printf('Hence the average deflection angle per collision is %.2f degrees.',theta );

