//Example 6.3// aflux ,ratio error
clc;
clear;
f=50;//frequency in hertz
Np=1;//no. of primary turns
Il=1.4;//iron loss in watts
Is=5;//SECONDARY WINDING CURRENT IN AMPERE
Re=1.4;//external burden in ohms
mmf=80;//magneromotive force in AT
Kt=200;//turn ratio
Ns=Kt*Np;//no. of secondary turns
Es=Is*Il;//voltage induced in secondary winding
Ep=Es/Kt;//primary voltage
Iw= Il/Ep;//loss component in ampere
Im= mmf/Np;//magnetising component of current in ampere
Kact= Kt+((Iw/Is));//actual ratio
Re= ((Kt-Kact)/Kact)*100;//ratio error in percentage
Phm= ((Es/(4.44*f*Ns)));//flux in Wb
disp(Phm,"maximum flux density in Wb")
disp(Re,"ratio error in percentage is")
