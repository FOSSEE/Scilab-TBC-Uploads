// sum 3-27
clc;
clear;
sigx=-105;
Txy=105;
sigy=270;
p1=(sigx/2+sqrt((sigx/2)^2+Txy^2));
p2=(sigx/2-sqrt((sigx/2)^2+Txy^2));
p3=0;
Tmax=(p1-p2)/2;
siga=sigy/2;
if (Tmax<=siga) then
    printf("The component is safe")
end

  // printing data in scilab o/p window
  printf("\n Tmax is %0.1f MPa    ",Tmax);