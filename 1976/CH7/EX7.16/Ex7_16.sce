
//To Determine the Resistance of the Various Steps in a Series Motor
//Page 398
clc;
clear;
P=20*735.5; //Power Rating
V=500; //Rated Voltage
Eff=80/100; //Efficiency
Raw=1; //Resistance of Armature and Windings
Iflux=10/100; //Increase in Flux

I=P/(V*Eff); //Maximum Current

//VAriation in Current
Imin=1.5*I;
Imax=2*I;
Rs=[]; //Total Resistance after each step
Rg=[]; //Step Resistance
FluxRatio=1+(Iflux); //Flux raises by 10% for every step

//Condition to make sure Imax doesnt go less than the Rated Value and also to find the number of steps and Step Resistances
for i= 1:1000
                Is=V/Raw;
    M=Imax-Is;
    if((abs(M)+M)==0)
        c=i; //Number of steps + 1
        R=poly(0,'R'); //Variable Resitance
    X=((V-(Imax*Raw))/(V-(Imin*R)))-FluxRatio; //Polynomial To Find The Next Resistance
    Rs(i)=roots(X(2)); //Total Next Resistance
    Rg(i)=Rs(i)-Raw; //Resistance of the ith Step
    Raw=Rs(i);
    else
        break;
    end
end

S=c-1; //Number Of steps
printf('\nThe Number of steps is %g\n\n\n',S)
for j=1:S
    printf('The Resistance of ''%g'' step is %g ohm\n',j,Rg(j))
end

