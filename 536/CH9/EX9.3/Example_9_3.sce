clc;
clear;

printf("\n Example 9.3\n");

dx1=0.20; //thickness of firebrick
dx2=0.10; //thickness of insulating brick
dx3=0.20; //thickness of building brick
k1=1.4; //Thermal conductivity of firebrick
k2=0.21; //Thermal conductivity of insulating brick
k3=0.7; //Thermal conductivity of building brick
T1=1200; //Temperature at junction 1
T4=330; //Temperature at junction 4

//From equation 9.19:
Q=(T1-T4)/((dx1/k1)+(dx2/k2)+(dx3/k3));
printf("\n Heat loss per unit area = %d W/m^2",Q);
//The ratio (Temperature drop over firebrick)/(Total temperature drop)
R=(dx1/k1)/((dx1/k1)+(dx2/k2)+(dx3/k3));
//Temperature drop over firebrick 
dT=(T1-T4)*R;
printf("\n Temperature drop over firebrick = %.0f K",dT);
T2=(T1-dT);
printf("\n The temperature at the firebrick-insulating brick interface = %.0f K",T2);