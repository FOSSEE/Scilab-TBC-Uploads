
//Chapter-4,Example4_1,pg 4-22
E1mag=[0 3 5 7 9 12 15 18 21]
E1rms=E1mag/sqrt(2)
Erms=5//given
Einrms=(((E1rms)^2)+((Erms)^2))^(1/2)
Eab=(2*sqrt(2).*Einrms)/%pi
xlabel('E1(Volts)','fontsize',5)
ylabel('Eab(Volts)','fontsize',5)
title('Phase Meter','fontsize',5)
printf("E1 mag    E1 rms    Ein Rms    Eab output")
k=[0    0    5    4.501;
   3    2.121    5.431    4.889;
   5    3.53    6.123    5.513;
   7    4.949    7.035    6.334;
   9    6.363    8.093    7.286;
   12    8.485    9.848    8.867;
   15    10.606    11.726    10.557;
   18    12.727    13.674    12.311;
   21    14.849    15.668    14.106  ]
disp(k)
plot(E1mag,Eab)
