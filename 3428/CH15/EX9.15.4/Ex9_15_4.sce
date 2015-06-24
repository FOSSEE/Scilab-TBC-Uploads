//Section-9,Example-4,Page no.-E.6
//To calcuate the pH of unknown solution.
clc;
R=8.314
T=298
F=96500
E=0.4188
E_ref=0.2415
pH=(E-E_ref)/((2.303*R*T)/F)
disp(pH,'pH of the unknown solution')

