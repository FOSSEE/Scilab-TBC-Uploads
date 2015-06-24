
//To determine the Factors affeting the mechanics of the Train
//Page 373
clc;
clear;
D=1.92
Ts=20; //Duration of stops
Vsch=40;
V1=60.8;
//Retardation
B=3.2;
Bc=0.16;
SchTime=D*3600/Vsch; // Schedule time in seconds
T=SchTime-Ts; //Time of Travel
a=poly(0,'a'); // Acceleration Unknown Value
V2=(V1-Bc*(T-(V1/a)))/(1-(Bc/B)); // From the Speed Time Curve
X=((V1+V2)*T-(V1*V2*((1/B)+(1/a))))-(7200*D); //Polynomial Equation to find a
a=roots(X(2)); //Roots of the Characteristic Equation
//To Determine the positive roots
Y=abs(a)+a;
if(Y(1)==0)
    a=a(2);
else
    a=a(1);
end
Ta=V1/a; //Duration of acceleration
V2=(V1-Bc*(T-(V1/a)))/(1-(Bc/B)); // From the Speed Time Curve
Tc=(V1-V2)/Bc; //Coasting Time
Tb=V2/B; //Braking time
//Distance are calculated according to the area under their respective curves
Da=(Ta*V1/2)/3600; //Distance during acceleration
Dc=(((V1-V2)*Tc/2)+(V2*Tc))/3600; //Distance during coasting
Db=(Tb*V2/2)/3600; //Distance during braking

r=4.53*9.81; //Train Resistance in N per tonne
M=200; //Mass of Train
AWF=1.1; //Accelerating Weight Factor
SEOA=0.010726*(V1^2)*(AWF)/D; //Specific Energy Output during acceleration
SEOAr=0.2778*r*Da/D; //Specific Energy Output during acceleration against train resistance
SEO=SEOA+SEOAr; //Specific Energy for the run
SEOB=0.010726*(V2^2)*(AWF)/D; //Specific Energy Output during braking
SEOC=SEOA-SEOB; //energy utilized during coasting
rc=SEOC*D/(0.2778*Dc)//Mean Train Resistance during coasting

printf('\ni)The Specific Energy Output for the Run is %g Whr/Tonne-km\n',SEO)
printf('ii) The Energy Dissipated by the brakes is %g Whr/Tonne-km\n',SEOB)
printf('iii)The Energy Utilized during coasting is %g Whr/Tonne-km\n',SEOC)
printf('iv) The Mean Train Resistance during coasting is %g N/tonne\n',rc)
