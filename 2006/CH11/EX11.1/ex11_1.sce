clc;
p1=150; p2=200; p3=250; p4=300; p5=350; p6=400; p7=450; p8=500; p9=550; p10=600; p11=650; p12=700; p13=750; p14=800; p15=850; p16=900; //  Pressures of merect's  boiler experiment in kPa
t1=111.4; t2=120.2; t3=127.4; t4=133.6; t5=138.9; t6=143.6; t7=147.9; t8=151.9;  t9=155.5; t10=158.9; t11=162; t12=165; t13=167.8; t14=170.4; t15=173; t16=175.4; // Temperatures of merect's boiler experiment in degree celcius
n=16; // Total number of readings taken
// Values of constant A & B
s_y= log10 (p1*p2*p3*p4*p5*p6*p7*p8*p9*p10*p11*p12*p13*p14*p15*p16);
s_x=1/(t1+273)+1/(t2+273)+1/(t3+273)+1/(t4+273)+1/(t5+273)+1/(t6+273)+1/(t7+273)+1/(t8+273)+1/(t9+273)+1/(t10+273)+1/(t11+273)+1/(t12+273)+1/(t13+273)+1/(t14+273)+1/(t15+273)+1/(t16+273);
s_xy=((log10 (p1))*1/(t1+273))+ ((log10 (p2))*1/(t2+273))+ ((log10 (p3))*1/(t3+273))+ ((log10 (p4))*1/(t4+273))+ ((log10 (p5))*1/(t5+273))+ ((log10 (p6))*1/(t6+273))+ ((log10 (p7))*1/(t7+273))+ ((log10 (p8))*1/(t8+273))+ ((log10 (p9))*1/(t9+273))+ ((log10 (p10))*1/(t10+273))+ ((log10 (p11))*1/(t11+273)) + ((log10 (p12))*1/(t12+273)) + ((log10 (p13))*1/(t13+273)) + ((log10 (p14))*1/(t14+273)) + ((log10 (p15))*1/(t15+273)) + ((log10 (p16))*1/(t16+273));
s_x2=(1/(273+t1))^2+(1/(273+t2))^2+(1/(273+t3))^2+(1/(273+t4))^2+(1/(273+t5))^2+(1/(273+t6))^2+(1/(273+t7))^2+(1/(273+t8))^2+(1/(273+t9))^2+(1/(273+t10))^2+(1/(273+t11))^2+(1/(273+t12))^2+(1/(273+t13))^2+(1/(273+t14))^2+(1/(273+t15))^2+(1/(273+t16))^2;
B= ((n*s_xy)-(s_x*s_y))/((n*s_x2)-((s_x)^2)); // Constant B
A=((s_y)-(B*s_x))/n; // Constant A
disp (B,"B =",A,"A =","Values of constant A & B");
// The latent heat of vapourization
T=150; // The latent heat of vapourization at this temperature in degree celcius
d_T=20; d_p=258.7;// Temperature and pressure difference
vg=0.3928; vf=0.0011; // specific volume in m^3/kg
hfg=(T+273)*(vg-vf)*d_p/d_T; // Clapeyron equztion
disp ("kJ/kg",hfg,"The latent heat of vapourization at 150 oC =");
