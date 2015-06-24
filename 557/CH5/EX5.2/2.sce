clc;funcprot(0);
//Example 5.2

//Initializing the variables 
v = 5;     //Velocity of jet     
rho = 1000;        //density of water
d = 0.025;        //Diameter of fixed nozzle

//Calculations
//--Part(a) Variation of force exerted normal to the plate with plate angle--//
header = ["Theta" "     vcos(x)" "        ρAv" "      Force"];
unit =   ["  deg" "         m/s" "       kg/s" "          N"];

A = %pi*d^2/4;
x = linspace(0,90,7);
vcomp = v*cosd(x);
m = rho*A*v;
ma = linspace(m,m,7);
force = rho*A*v^2*cosd(x);
value = [x;vcomp;ma;force]' ;
disp(value,unit, header );

//--Part(b) Variation of force exerted normal to the plate with plate velocity--//    
header = ["Theta" "  v" "  u" "   v-u" "     ρA(v-u)" "   Force"] ;
unit =   [" deg " "m/s" "m/s " "  m/s" "       kg/s " "       N"] ;

x = linspace(0,0,5);
v = linspace(5,5,5);
u = linspace(2,-2,5);
D = v-u;
Prod = rho*A*D;
Force = rho*A*D^2;
value = [x;v;u;D;Prod;Force]';
disp(value,unit,header)   ; 