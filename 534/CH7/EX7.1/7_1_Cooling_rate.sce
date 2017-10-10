clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 7.1   Page 415 \n'); //Example 7.1
// Cooling rate per Unit Width of the Plate

//Operating Conditions
v = 10;            //[m/s] Air velocity
p = 6000;          //[N/m^2] Air pressure
Tsurr = 300+273;    //[K] Surrounding Air Temperature
L = .5;            //[m] Length of plate
Ts = 27+273;       //[K] Surface Temp

//Table A.4 Air Properties at T = 437K 
uv = 30.84*10^-6*(101325/6000);         //[m^2/s] Kinematic Viscosity at P = 6000 N/m^2
k = 36.4*10^-3;           //[W/m.K] Thermal COnductivity
Pr = .687;                //Prandtl number

Re = v*L/uv;        //Reynolds number
printf("\n Since Reynolds Number is %i, The flow is laminar over the entire plate",Re);

//Correlation 7.30 
NuL = .664*Re^.5*Pr^.3334;    //Nusselt Number over entire plate length
hL = NuL*k/L;                // Average Convection Coefficient
//Required cooling rate per unit width of plate
q = hL*L*(Tsurr-Ts);

printf("\n\n Required cooling rate per unit width of plate = %i W/m", q);
//END