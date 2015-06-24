//exa 1.3
clc;clear;close;
format('v',6);
n1=600;//No. of apartments
L1=5;//kW//Each Apartment Load
n2=20;//No. of general purpose shops
L2=2;//kW//Each Shop Load
df=0.8;//demand factor
//1 Floor mill
L3=10;//kW//Load
df3=0.7;//demand factor
//1 Saw mill
L4=5;//kW//Load
df4=0.8;//demand factor
//1 Laundry
L5=20;//kW//Load
df5=0.65;//demand factor
//1 Cinema
L6=80;//kW//Load
df6=0.5;//demand factor
//Street lights
n7=200;//no. of tube lights
L7=40;//W//Load of each light
//Residential Load
df8=0.5;//demand factor
gdf_r=3;//group diversity factor
pdf_r=1.25;//peak diversity factor
//Commertial Load
gdf_c=2;//group diversity factor
pdf_c=1.6;//peak diversity factor
//Solution :
//Maximum demand of each apartment
dmax_1a=L1*df8;//kW
//Maximum demand of 600 apartment
dmax_a=n1*dmax_1a/gdf_r;//kW
//demand of apartments at system peak time
d_a_sp=dmax_a/pdf_r;//kW
//Maximum Commercial demand
dmax_c=(n2*L2*df+L3*df3+L4*df4+L5*df5+L6*df6)/gdf_c;//kW
//Commercial demand at system peak time
d_c_sp=dmax_c/pdf_c;//kW
//demand of street light at system peak time
d_sl_sp=n7*L7/1000;//kW
//Increase in system peak demand
DI=d_a_sp+d_c_sp+d_sl_sp;//kW
disp(DI,"Increase in system peak demand(kW)");
