// Example 12.1: (a) RD
//               (b) Product RC
//               (c) Reasonable value of R and C
clc, clear
fo=8e3; // in hertz
mu=59;
rd=10; // in kilo-ohms

disp("Part (a)");
RD=29*rd/(mu-29); // in kilo-ohms
disp(RD,"RD (kΩ​) =");

disp("Part (b)");
RC=1/(2*%pi*fo*sqrt(6)); // in seconds
RC=RC*1e6; // in micro-seconds
disp(RC,"Product RC (µs) =");

disp("Part (c)");
R=50; // in kilo-ohms
C=RC/R; // in nano-farad
C=C*1e3; // in pico-farad
disp(R,"Reasonable value of R (kΩ​) =");
disp(C,"Reasonable value of C (pF) =");