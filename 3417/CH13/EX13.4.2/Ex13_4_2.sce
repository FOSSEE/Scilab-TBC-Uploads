//Ex13.4.12.;Calculare maximum generator efficiency and the efficiency for maximum power,power output

//seedbeck coefficient(alpha_s);unit=volts/degree celcius
alpha_s1=-190*10^-6;//n-type
alpha_s2=190*10^-6;//p-type
//Specific resistivity(p);unit=Ohm-cm
p1=1.45*10^-3;//n-type
p2=1.8*10^-3;//p-type
//Figure of merit(Z);unit=degree k^-1
Z1=2*10^-3;//n-type
Z2=1.7*10^-3;//p-type


//conductivity (n-type), 
k1=(alpha_s1^2)/(p1*Z1);
//similarly
k2=(alpha_s2^2)/(p2*Z2);
printf(" Conductivity k1=%f W/cm degree celcius \n Conductivity k2=%f W/cm degree celcius",k1,k2);
//Z_opt=((alpha_s1-alpha_s2)^2)/[(p1*k1)^2+(p2*k2)^2];
//let
a=(alpha_s1-alpha_s2)
b=(p1*k1)
c=(p2*k2)
A=sqrt(b)
B=sqrt(c)
C=(A+B);
///therefore
Z_opt=(a/C)^2;
printf("\n Z_opt=%f degree k",Z_opt);
//Thermal conductance
A1=2.3;//cm^2
A2=1.303;//cm^2
l1=1.5;//cm
l2=0.653;//cm
K=((k1*A1)/l1)+((k2*A2)/l2)
printf("\n Thermal conductance K=%f W/degree celcius",K);
//R=Resistance of the generator=R1+R2
R=((p1*l1)/A1)+((p2*l2)/A2);
printf("\n Resistance of the generator R=%f ohm",R);
TH=923;//unit=k
TC=323;//unit=k
M_opt=(1+((Z_opt/2)*(TH+TC)))^0.5;
printf("\n M_opt=%f ohm",M_opt);
RL=M_opt*R;
printf("\n RL=%f ohms",RL);
//Optimum efficiency n_opt=(((TH-TC)/TH)*((M_opt-1)/(M_opt+(TC/TH)))*100;
aa=((TH-TC)/TH);
//taking M_opt=1.43
b=(1.43-1)/(1.43+(TC/TH));
n_opt=aa*b*100;
printf("\n Optimum efficiency n_opt=%f persent",n_opt);
//efficiency for max. power output n= (TH-TC)/TH)*m/[((1+m)^2/TH)*(KR/alpha_s_12^2)+(1+m)-(TH-TC)/2TH)]
//Efficiency power output
//RL=R i.e. m=1
// let ab=(1+m)^2/TH;ac=(KR/alpha_s_12^2);ad=(TH-TC)/2TH
m=1;
ab=4/TH;
ac=1/Z_opt;
ad=aa/2;
n_max=[aa/(ab*ac+2-ad)]*100;
printf("\n max. power output n_max %f persent",n_max)
//Power output P_opt=I^2*RL=alpha_s12^2(TH-TC)*RL/(R+RL)^2=alpha_s12^2(TH-TC)/(1+M_opt)^2*RL
//let at=alpha_s12^2(TH-TC);mi=(1+M_opt)^2*RL
at=a*a*(TH-TC)*(TH-TC);
ml=(1+1.43)*(1+1.43)*2.63*10^-3
P_opt=at/ml;
printf("\n Power output P_opt=%f watts",P_opt);
//for max. power P_max (RL=R)
//P_max=alpha_s12^2(TH-TC)*RL/(r+RL)^2=alpha_s12^2(TH-TC)RL*4RL
P_max=at/(4*1.84*10^-3);
printf("\n max. power P_max=%f watts",P_max);


//Many calcuating mistak are there in a following example,which is corrected in program.
