clear;
clc;
//Example 5.10
Vtn=-2;
Kn=0.1;
Vdd=5;
Rs=5;
Vgs=0;
I_D=Kn*(Vgs-Vtn)^2;
printf('\ndrain current=%.3f mA\n',I_D)
Vds=Vdd-I_D*Rs;
printf('\ndc drain to source voltage=%.2f V\n',Vds)
Vdssat=Vgs-Vtn
//since Vds>Vdssat transisyor is biased in saturation region
