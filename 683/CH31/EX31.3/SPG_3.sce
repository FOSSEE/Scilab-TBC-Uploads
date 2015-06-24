// sum 31-3
clc;
clear;
sigp=600;
FOS=3;
siga=sigp/FOS;
d=16;
D=1.5*d+60;
//Let Gasket diameter in compression zone be d1
d1=(300-160)/2;
//Let compressive stress in gasket for leak proof joint be sigl
sigl=12;
At=[1 157; 2 192; 3 245]
d=[1 16; 2 18; 3 20]

n=3;
for (i=1:n)
    Pi(i,2)=At(i,2)*d(i,2)
    Pc(i,2)=3*%pi*(d1^2-d(i,2)^2)
    if (Pi(i,2)>=Pc(i,2)) then
    printf("The Design is safe")
end
end



  // printing data in scilab o/p window
  printf("d is %0.0f mm     ",d(i,2));
