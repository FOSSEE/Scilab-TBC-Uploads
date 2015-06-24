//Exa 2.9
clc;
clear;
close;
//given data
k_in=0.3;// in W/mK
k_gw=0.038;// in W/mK
ro=1.5;// in cm
ho=12;//  in W/m^2 degree C
rc=k_in/ho;// in m
rc=rc*10^2;// in cm
disp(rc,"Critical radius in cm")
if ro<rc then
    disp("Since radius of insulation ("+string(ro)+" cm) is less than critical radius of insulation ("+string(rc)+" cm), so heat transfer rate will increase by adding thsi insulation");
    disp("and hence it is not effective")
end
ro=ro*10^-2;// in meter
// For effective insulation
// ro>=rc
// Kin/ho<= ro
roho=ro*ho;// in W/mK
/// Kin<= ro*ho
disp(roho,"Maximum value of thermal conductivity in W/mK")