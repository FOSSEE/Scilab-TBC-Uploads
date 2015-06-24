clc;funcprot(0);//Example 8.12
//Initilisation of Variables
Di=0.03;....//Inner diameter of brass tube in m
Do=0.04;....//Outer diameter of brass tube in m
K=110;....//Thermal conductivity of brass tube in W/m^2k
hi=1200;....//Inside heat transfer coefficient in W/m^2 K
ho=2000;.....//Outside heat transfer coefficient in W/m^2 K
Fi=0.00018;....//Fouling factor for inner surface in m^2C/W
Fo=0.00018;....//Fouling factor for outer surface in m^2C/W
//calculations
Ui=1/((1/hi)+Fi+((Di/(2*K))*log(Do/Di))+((Di/Do)*Fo)+((Di/Do)*(1/ho)));....//Overall heat transfer coefficient for inner surface in W/m^2 K
Uo=(Di/Do)*Ui;....//Overall heat transfer coefficient for outer surface in W/m^2 K
U=(hi*ho)/(ho+hi);.....//By neglecting tube resistance and fouling resistance U=Ui=Uo heat transfer coefficient in W/m^2C
disp(Ui,"Overall heat transfer coefficient for inner surface in W/m^2 K:")
disp(Uo,"Overall heat transfer coefficient for outer surface in W/m^2 K:")
disp(U,"By neglecting tube resistance and fouling resistance U=Ui=Uo heat transfer coefficient in W/m^2C:")
