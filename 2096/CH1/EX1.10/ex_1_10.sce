//Example 1.10// deflection
clc;
clear;
close;
S1=6.8;//sensivity of the piezoelectric transducer in pC/bar
S2=0.0032;//sensivity of the piezoelectric transducer in V/bar
S3=16;//sensivity of the piezoelectric transducer in mm/V
OS= S1*S2*S3;// overall sensivity in mm/bar
CI=20;//changeb in input pressure
CO=OS*CI;//change in out put signal
DC= CO;//deflection on the chart mm
disp(DC,"deflection on the chart in mm")
