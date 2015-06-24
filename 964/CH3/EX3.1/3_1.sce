clc;
clear;
lbm=9999; //cm, measured length of bridge
lrm=9;//cm, measured length of rivet
lbt=10000;//cm, true length of bridge
lrt=10;//cm,true length of rivet
//calculating true error below;
Etb=lbt-lbm;//cm, true error in bridge
Etr=lrt-lrm;//cm, true error in rivet
//calculating percent relative error below
etb=Etb*100/lbt;//percent relative error for bridge
etr=Etb*100/lrt;//percent relative error for rivet
disp("a. The true error is")
disp("for the bridge","cm",Etb)
disp("for the rivet","cm",Etr)
disp("b. The percent relative error is")
disp("for the bridge","%",etb)
disp("for the rivet","%",etr)
