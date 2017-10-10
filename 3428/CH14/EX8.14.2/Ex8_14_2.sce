//Section-8,Example-1,Page no.-IC.11
//To calculate the electron affinity of iodine with the help of the given data.
clc;
dl_Hf=-68.8
dl_Hsub=25.9
H=25.5               //((1/2)H)I_2
I=118.4
U=-165.4
E=dl_Hf-dl_Hsub-H-I-U
disp(E,'Electron affinity of iodine(kCal/mol)')
