clear;
clc;

// Illustration 10.8
// Page: 539

printf('Illustration 10.8 - Page: 539\n\n');

// solution

//****Data****//
// a:acetic acid c:Water d:Isopropylether layer
// Water solution (continuous):
C = 8000;// [kg/h]
xCn = 0.175;// [mass fraction]
Density_c = 1009;// [kg/cubic m]
viscosity_c = 3.1*10^(-3);// [kg/m.s]
Dc = 1.24*10^(-9);// [square m/s]

// Isopropyl Ethr Layer:
D = 20000;// [kg/h]
xDnPlus1 = 0.05;// [mass fraction]
Density_d = 730;// [kg/cubic m]
viscosity_d = 0.9*10^(-3);// [kg/m.s]
Dd = 1.96*10^(-9);// [square m/s]

sigma = 0.013;// [/N/m]
m = 2.68;// [Distributon coeffecient]
//*******//

Ma = 60.1;
g = 9.81;// [m/square s]
cCn = xCn*Density_c/Ma;// [kmol/cubic m]
cDnPlus1 = xDnPlus1*Density_d/Ma;// [kmol/cubic m]
mCD = m*(Density_c/Density_d);// [(kmol/cubic min ether)/(kmol/cubic m in water)]

// Perforations:
Do = 0.006;// [m]
pitch = 0.015;// [m]
qD = D/(3600*Density_d);// [cubic m/s]
delta_Density = Density_c-Density_d;// [kg/cubic m]
Value1 = Do/(sigma/(delta_Density*g))^0.5;
if Value1<0.1785
    // From Eqn. 10.74(a):
    doBydj = (0.485*Value1^2)+1;
else
    // From Eqn. 10.74(b)
    doBydj = (1.51*Value1)+0.12;
end
dj = Do/doBydj;// [m]
Vomax = 2.69*((dj/Do)^2)*(sigma/(dj*((0.5137*Density_d)+(0.4719*Density_c))))^0.5;// [m/s]
// Since Vomax is less than 0.1:
Vo = 0.1;// [m/s]
Ao = qD/Vo;// [square m]
No = Ao/(%pi*Do^2/4);// [square m]
// From Eqn. 6.30:
// Plate area for perforation:
Aa = Ao/(0.907*(Do/pitch)^2);// [square m]

// Downspout:
dp = 0.0007;// [m]
// From Eqn. 10.75:
U = Density_c^2*sigma^3/(g*viscosity_c^4*delta_Density);
// From Fig. 10.47 (Pg 534):
ordinate = 1.515;
abcissa = 0.62;
deff('[y] = f74(Vt)','y = abcissa-(dp*Vt*Density_c/(viscosity_c*U^0.15))');
Vt = fsolve(7,f74);// [m/s]
Vd = Vt;// [m/s]
qC = C/(Density_c*3600);// [cubic m/s]
Ad = qC/Vd;// [square m]
// From Table 6.2 (Pg 169):
// Allowing for supports and unperforated area:
At = Aa/0.65;// [square m]
T = (At*4/%pi)^0.5;// [m]
An = At-Ad;// [square m]


// Drop Size:
alpha1 = 10.76;
alpha2 = 52560;
alpha3 = 1.24*10^6;
alpha4 = 3.281;
abcissa = (alpha2*sigma*Do/delta_Density)+(alpha3*Do^1.12*Vo^0.547*viscosity_c^0.279/delta_Density^1.5);
Parameter = alpha1*Density_d*Vo^2/(delta_Density);
ordinate = 0.024;
dp = ordinate/alpha4;

// Coalesced layer:
Vn = qD/An;// [m/s]
// From Eqn. 10.80:
ho = (Vo^2-Vn^2)*Density_d/(2*g*0.67^2*delta_Density);// [m]
hD = ho;
// From Eqn. 10.82:
hC = 4.5*Vd^2*Density_c/(2*g*delta_Density);// [m]
// From Eqn. 10.78:
h = hC+hD;
// Since this is very shallow, increase it by placing an orifice at the bottom of the downspout.
// VR: Velocity through the restriction.
// hR: Corresponding depth of the coalesced layer.
// Assume:
Vr = 0.332;// [m/s]
hr = (Vr^2-Vd^2)*Density_c/(2*0.67^2*delta_Density);
Ar = qC/Vr;// [square m]
dr = (4*Ar/%pi)^0.5;// [m]
h = h+hr;// [m]
// The above results are satisfacyory.
Z = 0.35;// [m]
// Lead the downspout apron to within 0.1 m of the tray below.

// Dispersed-phase holdup:
// From Eqn. 10.48:
Vsphi_D = Vn;
// From Fig. 10.47 (Pg 534):
ordinate = 165.2;
abcissa = 30;
deff('[y] = f75(Vt)','y = abcissa-(dp*Vt*Density_c/(viscosity_c*U^0.15))');
Vtl = fsolve(7,f75);// [m/s]
// For solids:
// From Fig. 10.48 (Pg 536):
abcissa = dp/(3*viscosity_c^2/(4*Density_c*delta_Density*g))^(1/3);
phi_D = [0 0.1 0.2 0.3];
// Corresponding ordinates, from Fig. 10.48 (Pg 536):
ordinate1 = [8.8 5.9 4.3 3.0];
Value1 = 1/(4*viscosity_c*delta_Density*g/(3*Density_c^2))^(1/3);
Val = zeros(4,6);
// Val = [phi_D ordinate Vs(1-phi_D) (Vs for solids) Vs/Vt (Vs for liquids) (Vs*phi_D (for liquids))]
for i = 1:4
    Val(i,1) = phi_D(i);
    Val(i,2) = ordinate1(i);
    Val(i,3) = Val(i,2)/Value1;
    Val(i,4) = Val(i,3)/(1-Val(i,1));
    Val(i,5) = Val(i,4)/Val(1,4);
    Val(i,6) = Vtl*Val(i,5);
    Val(i,7) = Val(i,6)*Val(i,1);
end

//  By Interpolation:
Phi_D = 0.1;
// Mass transfer:
thetha_f = (%pi*(dp^3)/6)/(qD/No);// [s]
// From Eqn. 10.87:
const = 1.5;
kLDf = const*(Dd/(%pi*thetha_f))^0.5;// [m/s]
// From Eqn. 10.86
KLDf = 1/((1/kLDf)*(1+((1/mCD)*(Dd/Dc)^0.5)));// [m/s]
// The ordinate of Fig. 10.47 for the drops larger  than 70. Hence mass transfer coeffecient during drop rise is given by Eqn. 10.89:
// From Eqn. 10.91:
b = 1.052*dp^0.225;
// From Eqn. 10.90:
omega = (1/(2*%pi))*sqrt(192*sigma*b/(dp^3*((3*Density_d)+(2*Density_c))));// [1/s]
del = 0.2;
kLDr = sqrt((4*Dd*omega/%pi)*(1+del+(1/2)*del^2));
KLDr = 1/1/((1/kLDr)*(1+((1/mCD)*(Dd/Dc)^0.5)));// [m/s]
// From Eqn. 10.98:
EMD = ((4.4*KLDf/Vo)*(dp/Do)^2)+(6*KLDr*Phi_D*(Z-h)/(dp*Vn))/(1+((0.4*KLDf/Vo)*(dp/Do)^2)+(3*KLDr*Phi_D*(Z-h)/(dp*Vn)));
printf("Stage Efficiency: %f",EMD);