// example:-5.4,page no.-221.
// program to find the s-parameter of 3-dB attenuator circuit.
Za=8.56;Zb=8.56,Zc=141.8;Zo=50;
S11=(((((Zo+Zb)*Zc)/(Zo+Zb+Zc))+Za)-Zo)/(((((Zo+Zb)*Zc)/(Zo+Zb+Zc))+Za)+Zo);  // reflection coefficient seen at port 1.
S22=(((((Zo+Za)*Zc)/(Zo+Za+Zc))+Zb)-Zo)/(((((Zo+Za)*Zc)/(Zo+Za+Zc))+Zb)+Zo);  // reflection coefficient seen at port 2.
S12=(((1/((((Zo+Za)*Zc)/(Zo+Za+Zc))+Zb))*(((Zo+Za)*Zc)/(Zo+Za+Zc)))*(Zo/(Zo+Za)));  // transmission coefficient from port 2 to 1.
S21=(((1/((((Zo+Zb)*Zc)/(Zo+Zb+Zc))+Za))*(((Zo+Zb)*Zc)/(Zo+Zb+Zc)))*(Zo/(Zo+Zb)));  // transmission coefficient from port 1 to 2.
S=[S11 S12;S21 S22];  // s-parameter matrix.
disp(S,'S-parameter of 3-db attenuator circuit is =')