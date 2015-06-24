clear
clc;

// Illustration 5.4
// Page: 299

printf('Illustration 5.4 -  Page: 299\n\n');

// solution
// Fro example 4.4
m = 0.57;
D = 0.738; // [tower diameter, m]
G = 180; // [rate of gas entering the tower, kmole/h]
L = 151.5; // [rate of liquid leaving the tower, kmole/h]
// Amount of ethanol absorbed 
M = G*0.02*0.97; // [kmole/h]
//*****//

// Inlet gas molar velocity
Gmy1 = G*4/(3600*%pi*D^2); // [kmole/square m.s]
// Outlet gas velocity
Gmy2 = (G-M)*4/(3600*%pi*D^2); // [kmole/square m.s]
// Average molar gas velocity
Gmy = (Gmy1+Gmy2)/2; // [kmole/square m.s]

// Inlet liquid molar velocity
Gmx2 = L*4/(3600*%pi*D^2); // [kmole/square m.s]
// Outlet liquid molar velocity
Gmx1 = (L+M)*4/(3600*%pi*D^2); // [kmole/square m.s]

// Absorption factor at both ends of the column:
A1 = Gmx1/(m*Gmy1);
A2 = Gmx2/(m*Gmy2);
// Geometric average
A = sqrt(A1*A2);

y1 = 0.02;
// For 97% removal of the ethanol
y2 = 0.03*0.02;
// Since pure water is used 
x2 = 0;
// From equation 5.24
Ntog = log((y1-m*x2)/(y2-m*x2)*(1-1/A)+1/A)/(1-1/A);

// From example 4.4
// ky*ah = 0.191 kmole/cubic m.s
// kl*ah = 0.00733 s^-1
kyah = 0.191; // [kmole/cubic m.s]
klah = 0.00733; // [s^-1]
rowl = 986; // [kg/cubic m]
Ml = 18; // [gram/mole]
c = rowl/Ml; // [kmole/cubic m]
kxah = klah*c; // [kmole/cubic m.s]

// Overall volumetric mass transfer coefficient
Kyah = (kyah^-1 + m/kxah)^-1; // [kmole/cubic m.s]

// From equation 5.22
Htog = Gmy/Kyah; // [m]
// The packed height is given by equation 5.21,
Z = Htog*Ntog; // [m]
printf("The packed height of an ethanol absorber is %f m.\n\n",Z);