//Example 14.3
clc;

//Given Data
//All resistences in ohm
R1=2200;
Rf=10000;
R=120000;
Ra=R;
Rb=R;
Rc=R;
a=-1000;    //Temperature coefficient in k/deg C
E=5;        //applied potential to bridge in V
Rt=120000;
//At 25 deg C Bridge is balanced 
//as all bridge elements have same value

//At 0 deg C
T=0;        //temperature in deg C
del_R=a*(T-25);
//Output Voltage
Vo=-(del_R*E*Rf)/(2*R1*(2*R+del_R));
printf('\nOutput Voltage at 0 deg C is %.2f ohm\n',Vo)


//At 100 deg C
T=100;        //temperature in deg C
del_R=a*(100-25);
//Output Voltage
Vo=-del_R*E*invr(2*(2*R+del_R))*Rf/R1;
printf('\nOutput Voltage at 100 deg C is %.2f ohm\n',Vo)