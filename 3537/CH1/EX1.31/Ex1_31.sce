//Example 1_30
clc();
clear;
//To find the wavelength of the light
D5=0.336                            //units in centimeters
D5=0.336*10^-2                     //units in meters
D15=0.59                          //units in centimeters
D15=0.59*10^-2                    //units in meters
m=10
R=100                            //units in centimeters
R=100*10^-2                      //units in meters
lemda=((D15^2-D5^2)/(4*m*R))*10^9
printf("Wavelength of the light is %.0f nanometers",lemda)
