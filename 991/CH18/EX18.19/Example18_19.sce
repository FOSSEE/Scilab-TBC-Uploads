//Example 18.19.
clc
format(6)
disp("The secondary output of step-down transformer is sqrt(2) times the output d.c. voltage required. Therefore, the step-down transformer is wound to have 230 V : 23 V")
disp("Given data: D.C. output voltage = 9 V and Load current = 100 mA")
disp("The current rating is 1.5 times the maximum loas current i.e. 150 mA")
disp("A bridge rectifier or full wave rectifier is used to get the pulsating d.c. output.")
rl=9/(100*10^-3)  // in ohm
disp(rl,"  RL(ohm) = Vdc / TL =")
disp("A capacitor filter is used to remove the ripple and get a smooth output.")
disp("    Ripple factor gamma = 1 / 4*sqrt(3)*f*C*RL")
disp("Assume the ripple factor to be 0.03")
c=(1/(4*sqrt(3)*50*0.03*90))*10^6  // in uF
disp(c,"  C(uf) =")  // = 1000 uF
disp("The short circuit resistance Rsc connected with the series pass transistor is")
format(4)
rsc=0.7/(150*10^-3)  // in ohm
disp(rsc,"  Rsc(ohm) = VBE / Ilim_it =")
disp("Assume 7.6 V Zener diode in series with 1.5 k-ohm")
disp("The designed circuit is shown in fig.18.32.")