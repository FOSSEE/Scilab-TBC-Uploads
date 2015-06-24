// example:-8.1,page no.-392.
// program to compute the reflection coefficients seen looking in to the output port.
// as the power is divided in to 2:1 ratio. and Pin=(1/2)*Vo^2/Zo;
// so,P1=(1/3)*Pin;and P2=(2/3)*Pin ............(i)
Zo=50;
Z1=3*Zo;  // from above condition.............(i)
Z2=(3/2)*Zo;
Zin=parallel_impedence(Z1,Z2);  // input impedence to the junction.
if Zin==Zo
  disp("input is matched to the 50 ohm sources")
else
  disp("not matched")
end
Zin1=parallel_impedence(Zo,Z2); // looking in to the 150 ohm source.
Zin2=parallel_impedence(Zo,Z1); // looking in to the 75 ohm source.
tao1=(Zin1-Z1)/(Zin1+Z1);
tao2=(Zin2-Z2)/(Zin2+Z2);
disp(tao1,'reflection coefficient looking at 150 ohm line = ')
disp(tao2,'reflection coefficient looking at 75 ohm line = ')