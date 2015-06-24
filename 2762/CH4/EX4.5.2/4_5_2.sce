//Transport Processes and Seperation Process Principles
//Chapter 4
//Example 4.5-2
//Principles of Steady State Heat Transfer
//given data in si units
//nomenclature of unmentioned specifications similar to previous example
Di=0.0266;
Do=0.0334;
Pr=2.72;//Prandtl Number
L=0.305;
rho=0.98*1000;//density of water
k=0.633;
mu=4.32e-4;
Tw1=80;//assumed for the first trial temp in deg C
muw1=3.56e-4;
v=2.44;//vel in m/s
Re1=Di*v*rho/mu;
k=0.663;
hl=(k*0.027*(Re1^0.8)*(Pr^(1/3))*((mu/muw1)^0.14))/Di;
mprintf("i) the convective HTC= %f W/m2 K",hl)
Ai=%pi*Di*L;
Alm=%pi*((Do+Di)/2)*L;
Ao=%pi*Do*L;
ksteel=45;
Ri=1/(hl*Ai);
Rm=((Do-Di)/2)/(ksteel*Alm);
ho=10500;
Ro=(1/(Ao*ho));
sumR=Ri+Rm+Ro;
Tdiff=107.8-65.6;
Tdrop=(Ri/sumR)*Tdiff;
Ui=1/(Ai*sumR);
mprintf(" ii) overall HTC= %f W/m2 K",Ui);
q=Ui*Ai*(Tdiff);
mprintf(" ii) heat transfer rate= %f W",q)
mprintf(" the calculations performed in the above will vary from the example as fraction exponents have been used")
//the calculations performed in the above will vary from the example as fraction exponents have been used)
//the calculations performed in the above will vary from the example as fraction exponents have been used
