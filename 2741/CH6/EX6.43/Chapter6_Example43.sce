clc
clear
//Input data 
l=80;//Latent heat of fusion of ice in cal/g 
L=l*4.2*10^7;//Latent heat of fusion in ergs/g 
V=0.091;//The change in specific volume when 1 g of water freezes into ice in cc 
t1=0;//The actual freezing point of ice in degree centigrade 
t2=-1;//The given temperature at which ice must freeze in degree centigrade 
p=1;//The atmospheric pressure in atmospheres 

//Calculations 
T1=t1+273;//The actual freezing point of ice in K 
T2=t2+273;//The given temperature at which ice must freeze in K 
T=T1-T2;//The change in temperature in K 
P=(L*T)/(V*T1);//The pressure in dynes/cm^2
P1=P/10^6;//The pressure in atmospheres 
P2=P1+p;//The pressure under which ice would freeze in atmospheres

//Output 
printf('The pressure under which ice would freeze at -1 degree centigrade is  %3.1f atmospheres ',P2)



