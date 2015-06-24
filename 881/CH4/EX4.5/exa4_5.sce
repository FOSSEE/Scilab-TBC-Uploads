clc;
//Example 4.5
//Page no 131

//Solution

Rl=100; //ohm
Fc=1;  //MHz
Fm1=2; //kHz
Fm2=3; //kHz
Fm3=5; //kHz
Ec=100; //V
Em1=10; //V
Em2=20; //V
Em3=30; //V

m1=(Em1/Ec);

disp(m1,"m1 = ");

m2=(Em2/Ec);

disp(m2,"m1 = ");

m3=(Em3/Ec);

disp(m3,"m1 = ");

m=sqrt((m1^2)+(m2^2)+(m3^2));

disp(m,"Overall modulation index m = ");

disp("Power in both the upper and lower sideband is same, which is given by ");

Psb=((Ec^2*m^2)/(2*Rl*4));

disp('W',Psb,"Psb = ");
