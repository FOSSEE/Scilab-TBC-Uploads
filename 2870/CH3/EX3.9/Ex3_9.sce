clc;clear;
//Example 3.9

//part a
disp('Part a');

//given values
P=200;
x=0.6;

//from Table A-5
T=120.21;
uf=504.50;
ufg=2024.6;

//calcualtions
u=uf+(x*ufg);
disp(T,'temperature in Celcius ');
disp(u,'internal energy in kJ/kg');
disp('saturated liquid–vapor mixture at a pressure of 200 kPa');


//part b
disp('Part b');

//given values
T=125;
u=1600;

//from Table A–4
uf=524.83;
ug=2534.3;
//ug>u>ufg so its aturated liquid–vapor mixture
P=232.23;

//calculation
ufg=ug-uf;
x=(u-uf)/ufg;
disp(P,'Pressure in kPa');
disp(x,'x is');
disp('saturated liquid–vapor mixture at a temp of 125 of celcius');


//part c
disp('Part c');

//given values
P=1000;
u=2950;

//from Table A–6
uf=761.39;
ug=2582.8;
//u>ug so its superheated steam
T=395.2;

//calculation
disp(T,'temperature in Celcius');
disp('superheated vapor at 1MPa ');

//part d
disp('Part d');

//given values
T=75;
P=100;

//from Table A–5
Tsat=151.83;
//T<Tsat so it is a compressed liquid
//the given pressure is much lower than the lowest pressure value in the compressed liquid table i.e 5 MPa
//assuming, the compressed liquid as saturated liquid at the given temperature

//from Table A-4
u=313.99;
disp(u,'Internal energy in kJ/kg');
disp('the compressed liquid condition');


//Part e
disp('Part e');

//given values
P=850;
x=0;

//x=0 therefore it is a saturateed liquid condition
//from Table A-5
T=172.94;
u=731.00;
disp(T,'temperature in Celcius');
disp(u,'Internal energy in kJ/kg');
disp('saturateed liquid condition')
