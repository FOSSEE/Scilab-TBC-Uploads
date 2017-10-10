// Determine primary and secondary voltages and current

clc;
clear;

R1=100;
R2=40;

P=2; // Power

r=sqrt(R2/R1); // n2/n1 Turns ratio

if(r<1)
    printf(' The turns ratio is 1 : %g \n',(1/r));
else
    printf('The turns ratio is %g : 1 \n',r);
end

V1=sqrt(P*(R1));
V2=sqrt(P*(R2));

I1=V1/R1;
I2=V2/R2;

printf('\n Voltages are as follows \n')
printf('The primary voltage = %g V \n',V1)
printf('The secondary voltage = %g V \n',V2)
printf('\n Currents are as follows \n')
printf('The primary current = %g A \n',I1)
printf('The secondary current = %g A \n',I2)

