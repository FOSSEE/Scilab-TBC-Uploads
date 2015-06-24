//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.6bw
//verification of total internal reflection for given conditions of right prism

//given data
mu=5/3; //refracive index of the material of the right prism

//calculation
thetac=asind(1/mu) //snell's law

if(thetac<60)
    disp('total internal reflection does not take place for given conditions of right prism');
else
    disp('total internal reflection do take place for given conditions of right prism');
end
