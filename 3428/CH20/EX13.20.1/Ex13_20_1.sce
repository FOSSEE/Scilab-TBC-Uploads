//Section-13,Example-1,Page no.-MA.2
//To express the composition of the compound alloy Cu_3Au in Karats.
W_1=63.5                                  //gm
W_11=3*W_1                            //Weight of 3 moles of copper(gm)
W_2=197                               //gm
W_22=1*W_2                            //Weight of 1 mole of Gold(gm)
F_w=W_11+W_22                         //Formula weight of Cu_3Au(gm)
P_Cu=(W_11/F_w)*100                     //%
P_Au=(W_22/F_w)*100                        //%
x=(P_Au/100)*24
disp(x,'Composition of Cu_3Au in Karats')

