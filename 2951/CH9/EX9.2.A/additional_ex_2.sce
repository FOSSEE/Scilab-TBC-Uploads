clc;
clear;
P_box1=0.25; //P(box1)
P_box2=0.25; //P(box2)
P_box3=0.25; //P(box3)
P_box4=0.25; //P(box4)

Pdef_1=0.05;  //P(defective/box1)
Pdef_2=0.3;  //P(defective/box2)
Pdef_3=0.10;  //P(defective/box3)
Pdef_4=0.20;  //P(defective/box4)


Pcomp_def=(P_box1*Pdef_1)+(P_box2*Pdef_2)+(P_box3*Pdef_3)+(P_box4*Pdef_4); //Theoram of total probability

disp(Pcomp_def,"  P(component is defective)=");
