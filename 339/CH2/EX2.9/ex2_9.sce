Zg=50; //generator impedance
Zo=75; //intrinsic impedance
Zl=40; //line impedance
Vg=5; //generator voltage
Ts=(Zg-Zo)/(Zg+Zo); //reflection coefficient at source
To=(Zl-Zo)/(Zl+Zo); //reflection coefficient at load
temp=1-(To^2);
temp1=(1-Ts)^2;
temp2=(1-Ts*To)^2;
Pin=((Vg)^2*temp1*temp2)/(8*Zo*temp); //input power
Pl=Pin; //power delivered to the load
disp("Watts",Pl,"The Power delivered to the load is same as that at the input-->");