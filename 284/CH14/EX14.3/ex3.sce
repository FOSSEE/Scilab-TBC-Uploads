// Chapter 14_Semiconductor Power Devices
//Caption_Heat sinks and junction temperature
//Ex_3//page-662
Theta_dev_case=1.75
Theta_case_snk=1
Theta_snk_amb=5
Theta_case_amb=50
Tamb=30  //Ambient temperature
Tdev=150   //maximum junction or device temperature
PD_max=(Tdev-Tamb)/(Theta_dev_case+Theta_case_amb)   //when no heat sink is used
PD_MAX2=(Tdev-Tamb)/(Theta_dev_case+Theta_case_snk+Theta_snk_amb)
printf('Maximum power dissipated when no sink was used is %1.2f W while with the sink is %1.2f W which is more than the previous case.Thus use of heat sink allows more power to be dissipted in the device.',PD_max,PD_MAX2)