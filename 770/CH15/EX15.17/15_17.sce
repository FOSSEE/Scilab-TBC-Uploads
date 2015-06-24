clear;
clc;

//Example - 15.17
//Page number - 536
printf("Example - 15.17 and Page number - 536\n\n");

//Given
T = 25;//[C] - Temperature
P = [118.05,124.95,137.90,145.00,172.90,207.70,227.70,237.85,253.90,259.40,261.10,262.00,258.70,252.00,243.80];//[mm Hg]
x_1 = [0.0115,0.0160,0.0250,0.0300,0.0575,0.1125,0.1775,0.2330,0.4235,0.5760,0.6605,0.7390,0.8605,0.9250,0.9625];
y_1 = [0.1810,0.2250,0.3040,0.3450,0.4580,0.5670,0.6110,0.6325,0.6800,0.7050,0.7170,0.7390,0.8030,0.8580,0.9160];

// Pressure value for which x_1 = y_1 = 0, corresponds to P_2_sat,therefore
P_2_sat = 97.45;//[mm Hg]
// Pressure value for which x_1 = y_1 = 1, corresponds to P_1_sat,therefore
P_1_sat = 230.40;//[mm Hg]

x_2 = zeros(1,15);
y_2 = zeros(1,15);
Y1 = zeros(1,15);
Y2 = zeros(1,15);
GE_RT = zeros(1,15);
x1x2_GE_RT = zeros(1,15);
for i=1:15;
    x_2(1,i) = 1 - x_1(i);
    y_2(1,i) = 1 - y_1(i);
    Y1(1,i) = (y_1(i)*P(i))/(x_1(i)*P_1_sat);
    Y2(1,i) = (y_2(i)*P(i))/(x_2(i)*P_2_sat);
    GE_RT(1,i) = x_1(i)*log(Y1(i)) + x_2(i)*log(Y2(i));// G_E/(R*T)
    x1x2_GE_RT(1,i) = (x_1(i)*x_2(i))/GE_RT(i);
end

[M,N,sig]=reglin(x_1,x1x2_GE_RT);

// Linear regression between x_1 and x_1*x_2/(G_E/R*T) gives intercept = N and slope = M

// van Laar equation is x_1*x_2/(G_E/R*T) = 1/A + (1/B - 1/A)
// 1/A = N
A = 1/N;
B = 1/(M + 1/A);

printf(" The value of Van Laar coefficient A =  %f\n\n",A);
printf(" The value of Van Laar coefficient B =  %f\n",B);

