//Section-10,Example-1,Page no.-CT.21
//To calculate heat of formation at constant volume.
clc;
T=25+273
dl_ng=1-2
R=8.314
dl_H=-74850
dl_E=dl_H-(dl_ng*R*T)
disp(dl_E/1000,'heat of formation at constant volume(kJ/mol).')
