//ques-34.26
//Calculating Ionization energy for nitrogen
clc
e=1.711*10^5;//(in /cm)
KE=5.63;//kinetic energy (in ev)
e=e/8065.5;//(in ev)
IE=e-KE;
printf("The ionization energy for nitrogen is %.2f ev.",IE);
