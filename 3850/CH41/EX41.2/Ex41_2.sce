
//To Calculate the Dynamic Plate Resistance at the operating condition

//Example 41.2

clear;

clc;

V1=40;//Initial Plate Voltage in Volts

V2=42;//Final Plate Voltage in Volts

delVp=V2-V1;//Change in Plate Voltage in Volts

I1=50*10^-3;//Initial Plate Current in Amperes

I2=60*10^-3;//Final Plate Current in Amperes

delIp=I2-I1;//Change in Plate Current in Amperes

Rp=delVp/delIp;//Dynamic Plate Resistance in ohms

printf("Dynamic Plate Resistance = %d ohm",Rp);
