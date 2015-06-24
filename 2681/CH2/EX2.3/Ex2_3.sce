//angular frequency and the cutoff voltage
//given
clc
Bm=0.4//magnetic flux in tesla
ebym=1.759d+11//electron to mass ratio
a=0.04//radius of cathode in meter
b=0.1//radius of vane edge from centre in meter
Wc=ebym*Bm//angular frequency in rad
Vc=((ebym/8)*(Bm^2)*((b/10)^2)*((1-((a/b)^2))^2))//ERROR cut off voltage in volts
disp(Vc,Wc,'THE  the angular frequency and Cutoff voltage in radians and volts is given  by:')// rad,volts
//EERROR in cutoff voltage as value of ((1-((a/b)^2))^2)=0.7056 instead  of ((1-((a/b)^2))^2)=0.36
