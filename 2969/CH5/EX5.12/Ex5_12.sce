clc
clear
//DATA GIVEN
T1=1990;                    //Temperature of the heat Source in K
T2=850;                     //Temperature of the heat Sink in K
Qs=32.5;                    //heat supplied in kJ/min
P=0.4;                      //power developed by the engine in kW

ETAcarnot=(T1-T2)/T1;
//Also ETAth=work done/Heat supplied
ETAth=P/Qs;

printf('The Efficiency of carnot cycle is: %1.3f or %2.1f percent. \n',ETAcarnot,(ETAcarnot*100));
printf(' The Thermal efficiency of engine claimed by inventor is: %1.3f or %2.1f percent. \n\n',ETAth,(ETAth*100));

if(ETAth>ETAcarnot)
    printf(' Thus, The claim of the inventor is possible.');
else
    printf(' Thus, The claim of the inventor is NOT feasible, \n as no engine can be more efficient than that working on carnot cycle.');
