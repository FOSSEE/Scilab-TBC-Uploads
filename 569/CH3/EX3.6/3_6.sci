// Calculate the magnitude and limiting error in ohm and in percentage of the resistance
clc;
R1=37;
R1_le=5*R1/100;
R2=75;
R2_le=5*R2/100;
R3=50;
R3_le=5*R3/100;
R=R1+R2+R3;
disp(R,'Value of resistance (ohm)=')
R_le=R1_le+R2_le+R3_le;
disp(R_le,'Limiting Value of resistance (ohm)=')
Limiting_error_percentage=R_le*100/R;
disp(Limiting_error_percentage,'Limiting Value of resistance (percentage)=+/-')