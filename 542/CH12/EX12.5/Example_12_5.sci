clear;
clc;
printf("\n Example 12.5");
y1 = 0.10;
Y1 = 0.10/(1-0.10);
y2 = 0.001;
Y2 = y2;
mass_flowrate_gas = 0.95;       //mass flow rate in kg/m^2.sec
mass_percent_air = (0.9*29/(0.1*17+0.9*29))*100;
mass_flowrate_air = (mass_percent_air*mass_flowrate_gas);//in kg/m^2.sec
Gm = (mass_flowrate_air/29);
Lm = 0.65/18;         //Lm is in kmol/m^2.sec
//A mass balance between a plane in the tower where the compositions are X and Y and the top of the tower gives:

//Y = 1.173X+0.001
X = 0:0.001:0.159;
Y = 1.173*X+0.001;
plot(X,Y);

x=[0.021 0.031 0.042 0.053 0.079 0.106 0.159];

PG = [12 18.2 24.9 31.7 50.0 69.6 114.0];
i=1;
while i<8
    Y1(i) = PG(i)/(760-PG(i));
    i=i+1;
end
plot(x,Y1);
//xlabel("Area under the curve is 3.82m","kmolNH3/kmolH2O","kmolNH3/kmol air");
xtitle("Operating and equilibrium lines","kmol NH3/kmol H2O","kmol NH3/kmol air");
//If the equilibrium line is assumed to be straight, then:
//Gm(Y2 − Y1) = KGaZdeltaPlm

//Top driving force
deltaY2 = 0.022;
//Bottom driving force
deltaY1 = 0.001;
deltaYlm = 0.0068;
Z = (0.0307*0.11)/(0.001*0.688);
printf("The height of the tower is %.2f meters",Z);









