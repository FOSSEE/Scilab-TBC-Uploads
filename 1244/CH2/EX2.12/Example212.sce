

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 2 Example # 2.12 ")

//Length of steel component in m
L = 2;
//Radius of steel component in m
ro = 0.1;
//Thermal conductivity of steel in W/mK
k = 40;
//Thermal diffusivity in m2/s
alpha = 0.00001;
//Initital temperature in degree C
Ti = 400;
//Surrounding temperature in degree C
Tinfinity = 50;
//Heat transfer coefficient in W/m2K
h = 200;
//time of immersion in mins
t = 20;

//Since the cylinder has a length 10 times the diameter, we can neglect end
//effects.

//Calculating biot number
bi = (h*ro)/k;
if bi>0.1 then
  //Calculating fourier number
  fo = ((alpha*t)*60)/(ro*ro);
  //The initial amount of internal energy stored in the cylinder per unit
  //length in Ws/m
  Q = ((((k*%pi)*ro)*ro)*(Ti-Tinfinity))/alpha;

  //The dimensionless centerline temperature for 1/Bi= 2.0 and Fo= 1.2 from
  //Fig. 2.43(a)
  //Centreline temperature in degree C
  T = Tinfinity+0.35*(Ti-Tinfinity);
  disp("Centreline temperature in degree C is")
  T
  //The surface temperature at r/r0= 1.0 and t= 1200 s is obtained from Fig. 2.43(b) in terms of the centerline temperature
  //Surface temperature in degree C
  Tr = Tinfinity+0.8*(T-Tinfinity);
  disp("Surface temperature in degree C is")
  Tr
  //Then the amount of heat transferred from the steel rod to the water can be obtained from Fig. 2.43(c). Since Q(t)/Qi= 0.61,
  disp("The heat transferred to the water during the initial 20 min in Wh is")
  //The heat transferred to the water during the initial 20 min in Wh
  Q = ((0.61*L)*Q)/3600
end;
