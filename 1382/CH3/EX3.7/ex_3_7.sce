// Example 3.7: (i) Vce maximum (ii) Vce minimum (iii) Ic maximum (iv) Ic minimum (v) rms value of load current and voltage (vi) ac power developed across the load pated (vii) power dissi(viii) the efficiency of the amplifier circuit
clc, clear;
alpha=3;//
Podc=0.434;//output ac power in watts
Icq=140;//current in milli ampere
Rl=8;//load resistance in killo ohms
Vcq=10; 
Vcc=Vcq;//
Vcemax=18.3;//maximum collector to emitter voltage in volts
Vcemin=2.5;//minimum collector to emitter voltage in volta
Icmax=245;//maximum collector current in mili ampere
Icmin=25;//minimum collector current in mili ampere
Vlrms=(Vcemax-Vcemin)/(2*sqrt(2));//
VLrms=(1/alpha)*Vlrms;//rms value of load voltage
ILrms=(VLrms/Rl)*10^3;//rms value of load current
Pindc=Vcc*Icq*10^-3;// ac power developed across the load in watts
Pd=Pindc-Podc;// power dissipated in watts
n=(Podc/Pindc)*100;//efficieny
disp(Vcemax,"maximum collector to emitter voltage in volts")
disp(Vcemin,"minimum collector to emitter voltage in volts")
disp(Icmax,"maximum collector current in mili ampere")
disp(Icmin,"minimum collector current in mili ampere")
disp(VLrms,"rms value of load voltage")
disp(ILrms,"rms value of load current in milli ampere")
disp(Pindc,"ac power developed across the load in watts")
disp(Pd,"power dissipated in watts")
disp(n,"efficiency in percentage is")
