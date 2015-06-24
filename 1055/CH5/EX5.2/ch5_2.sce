// To determine the necessary line secondary voltage and tap ratio required.
clear
clc;
VL=100*2*%pi/(3*sqrt(2)*(cosd(30) + cosd(45)));
mprintf("VL=%.2f kV\n",VL);//Answers don't match due to difference in rounding off of digits
Tr=VL/110;
mprintf("tap ratio=%.2f \n",Tr);
