//Chapter 2
//Example 2-1
//ProbOnOutputvoltage 
//Page 19,figure 2-3
clear;clc;
//Given
Vplus=15;Vminus=-15;Vsatp=13;Vsatm=-13;//All in Volts
Aol=200000;//gain
//Example 2-1(a)
Vam=-10*(10^-6);//voltage at minus input
Vap=-15*(10^-6);//voltage at plus input
Ed1=Vap-Vam;//Differential Input Voltage
Vout1=Ed1*Aol;//Output Voltage
format(10);
if(Vout1>15) then
  disp("Value of o/p voltage1 = 13.0000V") //positive saturation voltage
elseif(Vout1<-15) then
  disp("Value of o/p voltage1 = -13.0000V")//negative saturation voltage
else  
  printf("\n\n Value of o/p voltage1 =  %.4f V \n\n",Vout1)
end

//Example 2-1(b)
Vbm=-10*(10^-6);//voltage at minus input
Vbp=+15*(10^-6);//voltage at plus input
Ed2=Vbp-Vbm;//Differential Input Voltage
Vout2=Ed2*Aol;//Output Voltage
format(10);
if(Vout2>15) then
  disp("Value of o/p voltage2 = 13.0000V")//positive saturation voltage
elseif(Vout2<-15) then
  disp("Value of o/p voltage2 = -13.0000V")//negative saturation voltage
else  
  printf("\n\n Value of o/p voltage2 =  %.4f V \n\n",Vout2)
end

//Example 2-1(c)
Vcm=-10*(10^-6);//voltage at minus input
Vcp=-5*(10^-6);//voltage at plus input
Ed3=Vcp-Vcm;//Differential Input Voltage
Vout3=Ed3*Aol;//Output Voltage
format(10);
if(Vout3>15) then
  disp("Value of o/p voltage3 = 13.0000V")//positive saturation voltage
elseif(Vout3<-15) then
  disp("Value of o/p voltage3 = -13.0000V")//negative saturation voltage
else  
  printf("\n\n Value of o/p voltage3 =  %.4f V \n\n",Vout3)
end

//Example 2-1(d)
Vdm=+1.000001;//voltage at minus input
Vdp=+1.000000;//voltage at plus input
Ed4=Vdp-Vdm;//Differential Input Voltage
Vout4=Ed4*Aol;//Output Voltage
format(10);
if(Vout4>15) then
  disp("Value of o/p voltage4 = 13.0000V")//positive saturation voltage
elseif(Vout4<-15) then
  disp("Value of o/p voltage4 = -13.0000V")//negative saturation voltage
else  
  printf("\n\n Value of o/p voltage4 =  %.4f V \n\n",Vout4)
end

//Example 2-1(e)
Vem=+5*(10^-3);//voltage at minus input
Vep=0;//voltage at plus input
Ed5=Vep-Vem;//Differential Input Voltage
Vout5=Ed5*Aol;//Output Voltage
format(10);
if(Vout5>15) then
  disp("Value of o/p voltage5 = 13.0000V")//positive saturation voltage
elseif(Vout5<-15) then
  disp("Value of o/p voltage5 = -13.0000V")//negative saturation voltage
else  
  printf("\n\n Value of o/p voltage5 =  %.4f V \n\n",Vout5)
end

//Example 2-1(f)
Vfm=0;//voltage at minus input
Vfp=+5*(10^-3);//voltage at plus input
Ed6=Vfp-Vfm;//Differential Input Voltage
Vout6=Ed6*Aol;//Output Voltage
format(10);
if(Vout6>15) then
  disp("Value of o/p voltage6 = 13.0000V")//positive saturation voltage
elseif(Vout6<-15) then
  disp("Value of o/p voltage6 = -13.0000V")//negative saturation voltage
else  
  printf("\n\n Value of o/p voltage6 =  %.4f V \n\n",Vout6)
end
