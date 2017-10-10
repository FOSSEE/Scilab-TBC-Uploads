clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 7.2   Page 417 \n'); //Example 7.2
// Maximum Heater Power Requirement

//Operating Conditions
v = 60;            //[m/s] Air velocity
Tsurr = 25+273;    //[K] Surrounding Air Temperature
w = 1;            //[m] Width of plate
L = .05;          //[m] Length of stripper
Ts = 230+273;       //[K] Surface Temp

//Table A.4 Air Properties at T = 400K 
uv = 26.41*10^-6;         //[m^2/s] Kinematic Viscosity
k = .0338;                //[W/m.K] Thermal COnductivity
Pr = .690;                //Prandtl number

Re = v*L/uv;        //Reynolds number

Rexc = 5*10^5;        //Transition Reynolds Number
xc = uv*Rexc/v;      //Transition Length
printf("\n Reynolds Number based on length L = .05m is %i. \n And the transition occur at xc = %.2f m ie fifth plate",Re,xc);

//For first heater
//Correlation 7.30 
Nu1 = .664*Re^.5*Pr^.3334;    //Nusselt Number 
h1 = Nu1*k/L;                // Average Convection Coefficient
q1 = h1*(L*w)*(Ts-Tsurr);   // Convective Heat exchange

//For first four heaters
Re4 = 4*Re;
L4 = 4*L;
Nu4 = .664*Re4^.5*Pr^.3334;    //Nusselt Number 
h4 = Nu4*k/L4;                // Average Convection Coefficient

//For Fifth heater from Eqn 7.38
Re5 = 5*Re;
A = 871;    
L5 = 5*L;
Nu5 = (.037*Re5^.8-A)*Pr^.3334;    //Nusselt Number 
h5 = Nu5*k/L5;                // Average Convection Coefficient
q5 = (h5*L5-h4*L4)*w*(Ts-Tsurr);

//For Sixth heater from Eqn 7.38
Re6 = 6*Re;
L6 = 6*L;
Nu6 = (.037*Re6^.8-A)*Pr^.3334 ;   //Nusselt Number 
h6 = Nu6*k/L6 ;               // Average Convection Coefficient
q6 = (h6*L6-h5*L5)*w*(Ts-Tsurr);

printf("\n\n Power requirement are \n qconv1 = %i W  qconv5 = %i W  qconv6 = %i W", q1,q5,q6);
printf("\n Hence %i > %i > %i and the sixth plate has largest power requirement", q6,q1,q5);
//END