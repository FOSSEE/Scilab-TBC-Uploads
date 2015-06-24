//Series and Parallel Connection of Thyristors//
//Example 4.2//
Ed=20;//permissible difference in voltage across devices in Volts//
Id=1*10^-3;//maximum difference in latching current across devices in Amperes//
Qd=10;//difference in recovery charge in Micro coloumbs//
Vd=20;//permissible difference in blocking voltage in Volts//
R=Ed/Id;//equivalent resistance in Ohms//
R1=R;
printf('value of equivalent resistance=R=%fohms',R=R1);
C1=Qd/Vd;//equivalent capacitance in Micro farads//
printf('\nvalue of equivalent capacitance=C1=%fmicrofarads',C1);

