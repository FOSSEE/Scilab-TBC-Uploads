//percentage of reflected power
//given
Vi=20//volts//incident voltage
Vr=12.5//volts//reflected voltage
row=Vr/Vi//reflected voltage coefficent
row2=row^2//reflected_power/incident_power
pi=1//watt
pr=0.391*1
%pr=pr*100//percentage power
disp(%pr,'the percentage of reflected power is:')
