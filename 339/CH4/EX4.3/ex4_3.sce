hie=5*10^3; //input impedance
hre=2*10^-4; //voltage feedback ratio
hfe=250; // small signal current gain
hoe=20*10^-6; //output admittance
rbc=hie/hre; // calculating base-collector resistance
rbe=hie/(1-hre); //calculating base-emitter resistance
beta=(hre+hfe)/(1-hre); //c calculating urrent gain
rce=hie/(hoe*hie-hre*hfe-hre); //collector-emitter resistance
disp("Ohms",rbc,"base collector resistance");
disp("Ohms",rbe,"base emitter resistance");
disp("Ohms",rce,"collector emitter resistance");
disp(beta,"current gain");