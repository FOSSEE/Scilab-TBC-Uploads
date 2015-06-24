clc;
//page 464
//problem 9.2

//Baseband cutoff signal fM = 15 kHz
fM = 15 * 10^3;

//Maximum frequency deviation Df = 60 kHz
Df = 60 * 10^3;

//Figure of Merit for FM is G_FM
G_FM = (3/2)*(Df/fM)^2;

disp('Figure of Merit for FM system is '+string(G_FM));

//Ratio of Figure of Merits of FM and AM systems is R
R = G_FM/(1/3);

disp('Ratio of Figure of Merits for FM and AM systems is '+string(R));

Df_new = 2*Df;

//Figure of Merit for FM when bandwidth is doubled is G_FM_new
G_FM_new = (3/2)*(Df_new/fM)^2;

//Ratio of Figure of Merits of FM and AM systems when bandwidth is doubled is R_new
R_new = G_FM_new/(1/3);

disp('Ratio of Figure of Merits for FM and AM systems when bandwidth is doubled is '+string(R_new));

