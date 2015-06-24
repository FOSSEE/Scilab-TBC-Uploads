clc
T1=300; //K
r=15;
y=1.4;
//p3/p1=70

T2=T1*(r)^(y-1);

//p2/p1=r^y
//p2=44.3*p1

T3=1400; //K; T3=T2*p3/p2

T4=T3 + (T3-T2)/y;

//v1/v3=15
//v4=0.084*v1
//v5=v1
//T5=T4*(v5/v1)^(y-1)
T5=656.9; //K

n_airstandard=1-(T5-T1)/((T3-T2) + y*(T4-T3));
disp("Efficiency =")
disp(n_airstandard)

disp("Reasons for actual thermal efficiency being different from the theoretical value :")

disp("1. In theoretical cycle working substance is taken air whereas in actual cycle air with fuel acts as working substance")

disp("2. The fuel combustion phenomenon and associated problems like dissociation of gases, dilution of charge during suction stroke, etc. have not been taken into account")

disp("3. Effect of variable specific heat, heat loss through cylinder walls, inlet and exhaust velocities of air/gas etc. have not been taken into account.")