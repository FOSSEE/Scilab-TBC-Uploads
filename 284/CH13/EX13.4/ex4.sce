// Chapter 13_Optical Devices
//Caption_Solar concentration
//Ex_4//page 605
JL==150*10^-3    //PHOTOCURRENT DENSITY
Js=3.6*10^-11   //reverse saturation current density
Voc=0.0259*log(1+JL/Js)
printf('Open circuit voltage when solar concentration is used is %1.3f V',Voc)