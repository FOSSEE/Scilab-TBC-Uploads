//CHAPTER 7_ Flow Measurement
//Caption : Sonic nozzle
// Example 6// Page 443
disp("Let uncertainty in mass flow rate be represented by wm")
disp("Let uncertainty with pressure be represented by wp")
disp("Let uncertainty with temperature measurement be represented by wt")
// To calculate the uncertainty in the temperature measurement
wm_m=0.02    //('entering the uncertainty in mass flow=:')
wp_p=0.01    //('entering the uncertainty in pressure measurement=:')
disp("Uncertainty in temperature is given by:")
disp("wt_t=2*sqrt(wm_m^2-wp_p^2)*100")
wt_t=2*sqrt(wm_m^2-wp_p^2)*100
printf('uncertainty in the temperature measurement is %1.2f %%\n',wt_t)