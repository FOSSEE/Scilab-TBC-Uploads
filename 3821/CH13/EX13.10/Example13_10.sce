////Chapter 13  Steam Engines
////Example 13.10 Page No 290
///Find Indicated power of steam engine
//Input data
clc;
clear;
IP=343;                  //Steam engine develop indicated power in Kw
N=180;                   //power In rpm
P1=15;                   //Steam supplied i bar                   
Pb=1.25;                 //Steam is exhausted in bar
rc=100/25;               //Cut-off take place of stroke
K=0.78;                  //Diagram factor
//x=L/D=4/3
x=4/3;                   //Stroke to bore ratio
pi=3.142;


//Calculation
Pm=((P1/rc)*(1+log(rc))-Pb);    //Therotical mean effective pressure Pm
Pma=Pm*K;                            //Actual mean effective pressure Pma
D=(((60000*IP)/(2*(Pma*10^5)*(4/3)*N))/(pi/4))^(1/3);//Indicated power of steam engine
A=((pi/4)*(D^2));
L=(x)*D;


//Output
printf('Therotical mean effective pressure= %f bar \n',Pm);
printf('Actual mean effective pressure=%f bar \n',Pma);
printf('Indicated power of steam engine=%f mm \n',D);
printf('Indicated power of steam engine= %f mm \n',L);
