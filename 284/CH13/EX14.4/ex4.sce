// Chapter 14_Semiconductor Power Devices
//Caption_Heat sinks and junction temperature
//Ex_4//page-663
P=20   //Rated power
Tj_max=175    //Junction temperature
TOC=25
Tamb=25   //ambient temperature
Theta_case_snk=1
Theta_snk_amb=5
Theta_dev_case=(Tj_max-TOC)/P
PD_MAX=(Tj_max-Tamb)/(Theta_dev_case+Theta_case_snk+Theta_snk_amb)
printf('Maximum power dissipated is %1.1f W',PD_MAX)