//example 4.4
clc;funcprot(0);
//Initilization of variable
Vload=[0.0 0.2 0.4 0.6 0.8 4.8 5.0 5.2 5.4 5.6 5.8 6.0 6.2 6.4 11.4 11.6 11.8 12.0];
Iload=[0.0 0.0 0.0 0.1 0.1 0.5 0.5 0.5 0.5 0.6 0.6 0.6 0.6 0.6 1.1 1.2 1.2 1.2];
Pload=[0.00 0.00 0.02 0.04 0.06 2.30 2.50 2.70 2.92 3.14 3.36 3.60 3.84 4.10 13.00 13.46 13.92 14.40];
Ps=[0.00 0.24 0.48 0.72 0.96 5.76 6.00 6.24 6.48 6.72 6.96 7.20 7.44 7.68 13.68 13.92 14.16 14.40];
Pic=[0.00 0.24 0.46 0.68 0.90 3.46 3.50 3.54 3.56 3.58 3.60 3.60 3.60 3.58 0.68 0.46 0.24 0.00];
printf('Vload     Iload     Pload     Ps        Pic');
printf('\n');
for i=1:18
    printf(' %.2f',Vload(i));
    printf('      %.2f',Iload(i));
    printf('      %.2f',Pload(i));
    printf('      %.2f',Ps(i));
    printf('      %.2f',Pic(i));
    printf('\n')
end
plot(Vload,Pic);
xtitle('load voltage vs IC power','Vload (V)','Pic (W)')
clear()
