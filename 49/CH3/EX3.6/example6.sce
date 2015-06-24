//Caption:Step response of first order systems
//Example 6
// page 100
clc;
// Given:In air, probe dry          timeconstant(tc)=30s
//       In water                                tc=5s
//       In air, probe wet                       tc=20s
// for t<0,T=25 degree C(initial temperature)
//     0<t<7, T=35 degree C(dry probe in air)
//     7<t<15, T=70 degree C(probe in water)
//     15<t<30, T=35 degree C(wet probe in air) 

//case i T(a)=25
T(7)=35+(25-35)*%e^(-(7/30))
printf("Temperature at the end of first interval")
disp(T(7));
//case ii T(a)=T(7)
T(15)=70+(T(7)-70)*%e^(-((15-7)/5))
printf("Temperature at the end of second interval")
disp(T(15));
//case iii T(a)=T(15)
T(30)=35+(T(15)-35)*%e^(-((30-15)/20))
printf("Temperature at the end of third interval")
disp(T(30));
