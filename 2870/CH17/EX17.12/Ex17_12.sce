clc;clear;
//Example 17.12

//given data
Ma1=2;
P1=230;
O=10;//O stands for angle of the mach lines

//constants used
k=1.4;

//calculations
//Eq. 17–49 for the upstream Prandtl–Meyer function
vMa1=sqrt((k+1)/(k-1))*atand(sqrt((k-1)*(Ma1^2-1)/(k+1)))-atand(sqrt(Ma1^2-1));
//Eq. 17–48 to calculate the downstream Prandtl–Meyer function
vMa2=O+vMa1;
//using equation solver as implict nature of Eq 17-49
Ma2=2.385;
disp(Ma2,'downstream Mach number Ma2 is');
//P2 = (P2/P0)/(P1/P0) * P1
P2= (1 + (k-1)*Ma2^2/2 )^(-k/(k-1)) / (1 + (k-1)*Ma1^2/2 )^(-k/(k-1)) * P1;
P2=floor(P2);
disp(P2,'downstream pressure in kPa')
