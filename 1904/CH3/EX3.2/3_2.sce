//To determine the fault current in the distribution transformer
//Page 119
clc;
clear;

//Impedances from the previous example
Zh=24.6437*exp(%i*53.9*%pi/180);
Zl=8.525*(10^-3)*exp(%i*18.9*%pi/180);
//Voltages
Vh=7200; //High End
Vx=120; // Low End
S=25*1000; //Transformer Rating in VA
N=Vh/Vx; //Turns Ratio

//R of service drop is zero //Line to Neutral Currents
IfLVn=Vx/(Zl+((1/(N^2))*Zh)); //Secondary Fault Current
IfHVn=IfLVn/N; //Primary Fault Current

//R of service drop is zero //Line to Line Currents
Nl=Vh/(2*Vx); //New Truns Ratio
IfLVl=2*Vx/((2*Zl)+((1/(Nl^2))*Zh)); //Secondary Fault Current
IfHVl=IfLVl/Nl; //Primary Fault Current

printf('\na) The Magnitude of Line to Neutral Fault Currentson HV and LV when R of service \ndrop is zero are %g A and %g A respectively\n',abs(IfHVn),abs(IfLVn))
printf('b) The Magnitude of Line to Line Fault Currentson HV and LV when R of service \ndrop is zero are %g A and %g A respectively\n',abs(IfHVl),abs(IfLVl))
printf('c) The Minimum Allowable interrupting capacity for circuit breaker is\nconnected to the LV is %g A\n',abs(IfLVn))
