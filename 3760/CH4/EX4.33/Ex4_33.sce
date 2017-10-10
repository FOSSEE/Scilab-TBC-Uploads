//ANSWER GIVEN IN THE BOOK FOR THIS QUESTION IS INCORRECT.

clc;
//Neglecting armature reaction & magnetic saturation
//Assuming rotational losses to remain constant
V=230;//Supply voltage
P=15000;//power rating of dc series motor in watts
Il_1=80;//line current rated
Il_2=40;//line current assuming that motor draws half the rated current at rated voltage
Ia_1=Il_1;//armature current at line current equal to 80 A.
Ia_2=Il_2;//armature current at line current equal to 40 A.
n1=1000;//rated speed in rpm
//Full load losses expressed as percentage of motor input:-
//Armature ohmic loss=2.8%(including brush loss)
//Field ohmic loss=2.2%
//Rotational loss=2.2%
P_ip=V*Il_1;//full load input
P_ohmic=P_ip*(5.4/100)//As percent of total ohmic losses=2.2+2.8=5.4%
//But P_ohmic=Il*Il*(Ra+Rs); where (Ra+Rs)=(armature + series field) resistance
//(Ra+Rs)=P_ohmic/(Il*Il)=0.115 ohms
//Let, r=(Ra+Rs)
r=0.115;

//PART(a)-
Ea1=V-(Ia_1*r);//counter emf at line current = 80 A
Ea2=V-(Ia_2*r);//counter emf at line current = 40 A
//Since the magnetic saturation is neglected, phi_1=k*80 & phi_2=k*40; where k=constant & phi_1 & phi_2 are flux per pole at line currents 80 & 40 A respectively.
//(Ea1/Ea2)=(n1*phi_1)/(n2*phi_2) or (220.8/225.4)=(1000*80)/(n2*40); where Ea1=220.8 V Ea2=225.4 V.
n2=(1000*80*225.4)/(40*220.8);//speed in rpm
printf('The speed of rotation of motor when the motor draws half the rated current at rated voltage is %f rpm.',round(n2));

//PART(b)-
Pr=P_ip*(2.2/100);//rotational losses
Psh=Ea2*Ia_2-Pr;
printf('\nThe shaft output power is %f W.',Psh);
