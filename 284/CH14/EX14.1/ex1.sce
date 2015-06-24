// Chapter 14_Semiconductor Power Devices
//Caption_Power transistor characteristics
//Ex_1//page-651
RL=10
Vcc=35
Ic_max=Vcc/RL
Ic=Vcc/(2*RL)
VCE=Vcc-Ic*RL     //Collector emitter voltage at maximum power point
PT=VCE*Ic    //Maximum transistor power dissipation
printf('The maximum power dissipation in transistor occurs at centre of the load line. The maximum power dissipation is therefore %1.1f W',PT)
