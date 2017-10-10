//Section-14,Example-1,Page no.-PC.53
//To calculate the surface tension of experimental liquid.
clc;
y_r=72.8               //dynes/cm
F_ur=520                //dynes
F_ue=125                  //dynes
y_e=(y_r*F_ue)/F_ur             //dynes/cm
disp(y_e,'Surface tension of experimental liquid(dynes/cm)')
