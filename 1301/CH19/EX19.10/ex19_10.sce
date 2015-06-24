clc;
m=0.001;     //mass in kg
c=3*10^8;    //velocity in m/sec 
p=10^8;      //power in Watt
t=24;        //time in hr/day
E=m*c*c;     //Eintstein equation
disp(E,"Energy in Joule = ");  //displaying result
M=(p*3600*t)/E;    //calculating mass of U required
m=E/(7822*4185);   //calculating mass of coal required
disp(M,"Mass of U required in kg/day = ");  //displaying result
disp(m,"Mass of coal required in kg/day = ");  //displaying result
