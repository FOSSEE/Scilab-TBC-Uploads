clear;
clc;

// Illustration 6.3
// Page: 174

printf('Illustration 6.3 - Page: 174\n\n');

// solution

//****Data****//
// a = methanol b = water
G = 0.100;// [kmol/s]
L = 0.25;// [kmol/s]
Temp = 273+95;// [K]
XaG = 0.18;// [mol % in gas phase]
MaL = 0.15;// [mass % in liquid phase]
//*****//

Ma = 32;// [kg/kmol]
Mb = 18;// [kg/kmol]
Mavg_G = XaG*Ma+((1-XaG)*Mb);// [kg/kmol]
Density_G = (Mavg_G/22.41)*(273/Temp);// [kg/cubic cm]
Q = G*22.41*(Temp/273);// [cubic cm/s]
Density_L = 961;// [kg/cubic cm]
Mavg_L = 1/((MaL/Ma)+(1-MaL)/Mb);// [kg/kmol]
q = L*Mavg_L/Density_L;

// Perforations
printf("Perforations\n");
printf("Do = 4.5mm on an equilateral triangle pitch 12 mm between the hole centres, punched in sheet metal 2 mm thick\n");
Do = 0.0045;// [m]
pitch = 0.012;// [m]
// By Eqn.6.31
Ao_by_Aa = 0.907*(Do/pitch)^2;
printf("The ratio of Hole Area By Active Area is:%f\n",Ao_by_Aa);
printf("\n");

// Tower Diameter
printf("Tower Diameter\n");
t = 0.50;// [tray spacing,m]
printf("Tower Spacing:%f m\n",t);
// abcissa = (L/G)*(Density_G/Density_L)^0.5 = (q/Q)*(Density_L/Density_G)^0.5
abcissa = (q/Q)*(Density_L/Density_G)^0.5;
// From Table 6.2 (Pg 169)
alpha = (0.0744*t)+0.01173;
beeta = (0.0304*t)+0.015;
if (abcissa<0.1) 
    abcissa = 0.1;
end
sigma = 0.040;// [N/m]
// From Eqn.6.30
Cf = ((alpha*log10(1/abcissa))+beeta)*(sigma/0.02)^0.2;
// From Eqn. 6.29
Vf = Cf*((Density_L-Density_G)/Density_G)^(1/2);// [m/s]
// Using 80% of flooding velocity
V = 0.8*Vf;// [m/s]
An = Q/V;// [square m]
// The tray area used by one downspout = 8.8%
At = An/(1-0.088);// [square m]
D = (4*At/%pi)^(1/2);// [m]
// Take D = 1.25 m
D = 1.25; //[m]
At = %pi*(D^2)/4;// [corrected At, square m]
W = 0.7*D;// [weir length,m]
Ad = 0.088*At;// [square m]
// For a design similar to Fig 6.14 (Pg 168)
// A 40 mm wide supporting ring, beams between downspouts and a 50 mm wide disengaging & distributing zones these areas total 0.222 square m
Aa = At-(2*Ad)-0.222;
printf("Weir Length:%f\n",W);
printf("Area for perforated sheet: %f square m\n",Aa);
printf("\n");

// Weir crest h1 & Weir height hw
printf("Weir crest h1 & Weir height hw\n")
h1 = 0.025;// [m]
h1_by_D = h1/D;
D_by_W = D/W;
// From Eqn. 6.34
Weff_by_W = sqrt(((D_by_W)^2)-((((D_by_W)^2-1)^0.5)+(2*h1_by_D*D_by_W))^2);
// Set hw to 50 mm
hw = 0.05;// [m]
printf("Weir crest: %f m\n",h1);
printf("Weir height: %f m\n",hw);
printf("\n");

// Dry Pressure Drop
printf("Dry Pressure Drop\n");
l = 0.002;// [m]
// From Eqn. 6.37
Co = 1.09*(Do/l)^0.25;
Ao = 0.1275*Aa;// [square m]
Vo = Q/Ao;// [m/sec]
viscocity_G = 1.25*10^(-5);// [kg/m.s]
Re = Do*Vo*Density_G/viscocity_G;
// From "The Chemical Engineers Handbook," 5th Edition fig 5.26
fr = 0.008;
g = 9.81;// [m/s^2]
// From Eqn. 6.36
deff('[y] = f(hd)','y = (2*hd*g*Density_L/(Vo^2*Density_G))-(Co*(0.40*(1.25-(Ao/An))+(4*l*fr/Do)+(1-(Ao/An))^2))');
hd = fsolve(1,f);
printf("Dry Pressure Drop:%f m\n",hd);
printf("\n");

// Hydraulic head hl
printf("Hydraulic head hl");
Va = Q/Aa;// [m/s]
z = (D+W)/2;// [m]
// From Eqn. 6.38
hl = 6.10*10^(-3)+(0.725*hw)-(0.238*hw*Va*(Density_G)^0.5)+(1.225*q/z);// [m]
printf("Hydraulic head: %f m\n",hl);
printf("\n");

//Residual Pressure drop hr
printf("Residual Pressure drop hr\n");
// From Eqn. 6.42
hr = 6*sigma/(Density_L*Do*g);// m
printf("Residual Pressure Drop:%e m\n",hr);
printf("\n");

// Total Gas pressure Drop hg
printf("Total Gas pressure Drop hg\n")
// From Eqn. 6.35
hg = hd+hl+hr;// [m]
printf("Total gas pressure Drop: %f m\n",hg);
printf("\n");

// Pressure loss at liquid entrance h2
printf("Pressure loss at liquid entrance h2\n");
// Al: Area for the liquid flow under the apron
Al = 0.025*W;// [square m]
Ada = min(Al,Ad);
// From Eqn. 6.43
h2 = (3/(2*g))*(q/Ada)^2;
printf("Pressure loss at liquid entrance:%e m\n",h2);
printf("\n");

// Backup in Downspout h3
printf("Backup in Downspout h3\n");
// From Eqn.6.44
h3 = hg+h2;
printf("Backup in Downspout:%f m\n",h3);
printf("\n");

// Check on Flooding
printf("Check on Flooding\n");
if((hw+h1+h3)<(t/2))
    printf("Choosen Tower spacing is satisfactory\n");
else
    printf("Choosen Tower spacing is  not satisfactory\n")
end
printf("\n");

// Weeping Velocity
printf("Weeping Velocity\n");
printf("For W/D ratio %f weir is set at %f m from the center from the tower\n",W/D,0.3296*D);
Z = 2*(0.3296*D);// [m]
// From Eqn.6.46
deff('[y] = f8(Vow)','y = (Vow*viscocity_G/(sigma))-(0.0229*((viscocity_G^2/(sigma*Density_G*Do))*(Density_L/Density_G))^0.379)*((l/Do)^0.293)*(2*Aa*Do/(sqrt(3)*(pitch^3)))^(2.8/((Z/Do)^0.724))');
Vow = fsolve(0.1,f8);// [m/s]
printf("The minimum gas velocity through the holes below which excessive weeping is likely: %f m/s\n",Vow);
printf("\n");

// Entrainment
printf("Entrainment\n");
V_by_Vf = V/Vf;
// From Fig.6.17 (Pg 173), V/Vf = 0.8 & abcissa = 0.0622
E = 0.05;
printf("Entrainment:%f\n",E);