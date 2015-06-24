//example 4.7
clc; funcprot(0);
// Initialization of Variable
V=24;
R=10;
Qs=4;
Tj=125;
Ta=40;
Qj=2.5;
Qc=2;
//calculation
P=(Tj-Ta)/(Qj+Qc+Qs);
disp(P,"power delivered by IC in watt:")
Vload=[9.4 9.6];
Iload=[.94 .96];
Pload=[4.42 4.61];
Ps=[14.36 14.67];
Pic=[9.94 10.06];
printf('Vload     Iload     Pload     Ps          Pic');
printf('\n')
for i=1:2
    printf('%.2f',Vload(i));
    printf('      %.2f',Iload(i));
    printf('      %.2f',Pload(i));
    printf('      %.2f',Ps(i));
    printf('      %.2f',Pic(i));
    printf('\n')
end
clear()
