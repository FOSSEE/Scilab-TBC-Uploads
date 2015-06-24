//Chapter-9,Example 12,Page 222
clc();
close();

wt_Ag = 0.1351   //weight of Ag deposited in a silver coulometer

Ewt_Ag = 107.88   //atomic weight of Ag

Ewt_Cu = 63.6   //atomic weight of Cu

wt_Cu= wt_Ag*(Ewt_Cu/2)/Ewt_Ag  //wt of Cu deposited

loss=0.6350-0.6236  //loss in weight of Cu at anode

t_Cu = loss/wt_Cu

t_SO4= 1-t_Cu

printf('the transport number of Cu+2 ion is %.3f ',t_Cu)

printf('\n the transport number of SO4 ion is %.3f ',t_SO4)
