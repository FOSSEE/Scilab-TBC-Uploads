//fiber optic communications by joseph c. palais
//example 10.4
//OS=Windows XP sp3
//Scilab version 5.4.1
//given
clc;
clear all;
deltaf=200//Frequency deviation in MHz/mA
fm=300//modulation frequency in MHz
pac_current1=1//peak ac current in mA
pac_current2=5//peak ac current in mA


//to find
deltaf1=deltaf*pac_current1//frequency deviation for 1mA in MHz
deltaf2=deltaf*pac_current2//frequency deviation for 5mA in MHz
beta1=deltaf1/fm//modulation index at 1mA
mprintf("Modulation index at 1mA=%f",beta1)
beta2=deltaf2/fm//modulation index at 5mA
mprintf("\nModulation index at 5mA=%f",beta2)
