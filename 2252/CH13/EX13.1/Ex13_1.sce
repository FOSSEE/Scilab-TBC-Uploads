
//temp. rise at any time t is theta=theta_f-(theta_f-theta_1)*exp(-t/T)
theta_1=0//initial temperature
//theta =25 degree C when t=1 hr; theta =37.5 degree C when t=2 hr
//on solving for T
T=1/log(2)
mprintf("Heating time constant=%f hr\n", T)
//on solving for theta_f
theta_f=25/(1-exp(-1/T))
mprintf("Final steady full load temperature rise theta_f=%f degree C\n", theta_f)
//Temp. fall at any time t is theta'=theta_f'+(theta_2-theta_f')*exp(-t/T')
//As the transformer is disconnected now, theta_f'=0
theta_2=theta_f
theta_dash=40-30
t=1.5
T=t/log(theta_2/theta_dash)
mprintf("Cooling time constant =%f hr", T)
//The answers vary from the textbook due to round off error
