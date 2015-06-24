clear ;
clc;
// Example 9.6
printf('Example 9.6\n\n');
printf('Page No. 268\n\n');

//given
U1 = 5.6;// Single glazing heat transfer coefficient in W/m^2_K
U2 = 2.8;// Double glazing heat transfer coefficient in W/m^2_K
Ti = 21;// Internal Temperature in degree celcius
To = -1;// External Temperature in degree celcius
R_H = 0.5;// Relative humidity
Rs_i = 0.123;// Surface resistance in (W/m^2-K)^-1

// At 21 Degree celcius and R.H. = 0.5, the dew point is 10.5 degree celcius
Dew_pt = 10.5;// Dew point in degree celcius
//As Ts_i = Ti - (Rs_i * U *(Ti - To))

//(a) Single Glazing
Ts_i_S = Ti - (Rs_i * U1 *(Ti - To));// in degree celcius
printf('The internal surface temperature for single glazing is %.1f deg C \n',Ts_i_S)
if (Dew_pt > Ts_i_S) then
    disp('Surface condensation will occur since it is less than 10.5 deg C.')
else
    disp('No surface condensation is expected as it is greater than 10.5 deg C.')
end

//(b) Double Glazing
Ts_i_D = Ti - (Rs_i * U2 *(Ti - To));// in degree celcius
printf('The internal surface temperature for single glazing is %.1f deg C \n',Ts_i_D)
if (Dew_pt > Ts_i_D) then
    disp('Surface condensation will occur since it is less than 10.5 deg C.')
else
    disp('No surface condensation is expected since it is greater than 10.5 deg C.')
end
