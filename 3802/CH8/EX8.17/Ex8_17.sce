//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_17.sce.

clc;
clear;
P=100e3;
V=460;
It=9.8;
If=2.7;
R=0.11;

printf("\n (a)")
I=(P/2)/V;
Ia=I+If;
Wa=Ia^2*R;
Wsh=V*If;
Ian=It-If;
W_not=V*Ian;
NL_armature_loss=Ian^2*R;
other_loss=W_not-NL_armature_loss;            //other losses include iron,friction,windage losses
T_loss_HL=Wa+Wsh+other_loss;
Pi_HL=(P/2)+T_loss_HL;
efficiency=((P/2)/Pi_HL)*100;
printf("\n  Efficiency of the generator at half load=%2.1f percentage \n",efficiency)

printf("\n (b)")
I=P/V;
Ia=I+If;
Wa=Ia^2*R;
Wsh=V*If;
Ian=It-If;
W_not=V*Ian;
NL_armature_loss=Ian^2*R;
other_loss=W_not-NL_armature_loss;            //other losses include iron,friction,windage losses
T_loss_FL=Wa+Wsh+other_loss;
Pi_FL=P+T_loss_FL;
efficiency=(P/Pi_FL)*100;
printf("\n  Efficiency of the generator at full load=%2.2f percentage \n",efficiency)

