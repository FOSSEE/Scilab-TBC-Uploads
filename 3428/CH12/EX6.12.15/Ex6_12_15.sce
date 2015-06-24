//Section-6,Example-7,Page no.-P.49
//To calculate the freezing point of the given aqueous solution.
clc;
T_bbar=373
T_fbar=273
T_b=373.1
dl_H=1            //(let) dl_H=(dl_Hvap./dl_Hfus.)
dl_Tb=(T_b-T_bbar)
dl_Tf=dl_Tb*((T_fbar)^2/(T_bbar)^2)*dl_H
disp(dl_Tf,' Freezing point of the given aqueous solution')
//dl_Tf=dl_Tf*(dl_Hvap./dl_Hfus.)
