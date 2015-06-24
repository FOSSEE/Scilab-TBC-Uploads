//Section-1,Example-1,Page no.AC-234
//To calculate the hardness of water sample in terms of CaCO3 equivalents.
clc;
Ce_CaCO3=50
Ce_CaSO4=68
M_CaSO4=400
M_F=Ce_CaCO3/Ce_CaSO4
H=M_CaSO4*M_F
disp(H,'Hardness of water sample(ppm)')
