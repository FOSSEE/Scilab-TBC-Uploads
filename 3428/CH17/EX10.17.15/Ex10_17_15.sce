//Section-10,Example-1,Page no.-CT.50
//To calculate change in enthalpy(dl_H) for the process.
clc;
dl_G1=-86                    //dl_G at 298K
dl_G2=-84                    //dl_G at 308K
T_2=308
T_1=298
T=303
P=(dl_G2-dl_G1)/(T_2-T_1)          //P=(dl_G/dl_T) in kJK^-1
dl_G3=(dl_G1-dl_G2)/2
dl_G=-85
dl_H=dl_G-(T*P)
disp(dl_H,'Enthalpy change in kJ')

