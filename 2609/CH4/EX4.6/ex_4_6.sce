////Ex 4.6
clc;
clear;
close;
format('v',5);
AOL=50;//unitless
Beta=0.8;//unitless
deltaAOL=-20;//%(Change in open loop gain)
deltaBeta=15;//%(Change in feedback factor)
AOLnew=AOL+AOL*deltaAOL/100;//unitless(AOL after change)
Betanew=Beta+Beta*deltaBeta/100;//unitless(Beta after change)
ACL=AOLnew/(1+AOLnew*Betanew);//unitless
disp(ACL,"Close loop gain, ACL");
