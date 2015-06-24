clear;
clc;
close;
disp("Example 7.2")
rm=0.5
Um=212 //m/s
Czm=155 //m/s
Ct1m=28 //m/s
Rm=0.6
alfar=1 //alfar=alfa3/alfa1.
w=Um*60/(rm*2*%pi)
disp(w,"(a)Rotor angular speed w in rpm")
Ct2m=2*Um*(1-Rm)-Ct1m
disp(Ct2m,"(b)Rotor exit swirl in m/s:")
wcm=Um*(Ct2m-Ct1m)/1000
disp(wcm,"(c)Rotor specific work at pitchline Wcm in kJ/kg :")
Wt2m=Ct2m-Um
disp(Wt2m,"(d)Rotor relative velocity vector at rotor exit in m/s:")
disp("Hence vector is 155k-70.4e")
//Since alfa3=alfa1, rotor and stator torques are equal and opposite each other.
trm=rm*(Ct2m-Ct1m)
tsm=-1*trm
disp(trm,"(e)Rotor torque per unit mass flow rate in m^2/s:")
disp(tsm,"stotor torque per unit mass flow rate in m^2/s")  
pshm=(Ct2m-Ct1m)/Um
phm=Czm/Um
disp(pshm,"(f)Stage loading parameter at pitchline :")
disp(phm,"(g)Flow coefficient :")




