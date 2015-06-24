//Example 7.1
clc;
clear;
close;
format('v',9);
disp("Part(i)");
disp("Absolute unit of viscosity(in C.G.S) is Poise.");
disp("Poise=1 dyne-sec/cm^2");
disp("Gravitational unit of viscosity is 1 gm-sec/cm^2.");
disp("On equating we get, 1 gm = 981 dyne");
//Let x=1kg-sec/m^2
x=1*10^3/10^4;//g-sec/cm^2
x=x*981;//dyne-sec/cm^2 or Poise(Putting 1gm=981 dyne)
disp("1 kg-sec/m^2 = "+string(x)+" Poise");
one_Poise=1/x;//kg-sec/m^2
one_Poise=1/x*9.81;//N-sec/m^2 or Pa-sec(as 1Pa=1N/m^2)
disp("1 Poise = "+string(one_Poise)+" N-sec/m^2 or Pa-sec");
disp("Part(ii)");
disp("Kinematic viscosity = viscosity/specific_gravity");
disp("Kinematic viscosity C.G.S unit is cm^2/sec. 1cm^2/sec=1stoke");
disp("Kinematic viscosity M.K.S unit is m^2/sec");
//let x=1;//m^2/sec
x=1;//m^2/sec
x=x*10^4;//cm^2/sec or stokes
disp("1 m^2/sec = "+string(x)+" cm^2/sec or stoke");
one_stoke=1/x;//m^2/sec
disp("1 stoke = "+string(one_stoke)+" m^2/sec");
disp("1 stoke = 100 centi-stokes");
