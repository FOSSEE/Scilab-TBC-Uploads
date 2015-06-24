clc;
// Take freon 22 as component 1 and Freon 12 as component 2
// (a). y-x diagram at 40 oC
P1sat=15.335; // Saturation pressure of Freon 22 at 40oC in bar
P2sat=9.607; // Saturation pressure of Freon 12 at 40oC in bar
a=P1sat/P2sat;
xset('window',1); // For Plotting y-x Diagram
function  y1=f(x1)
    y1=(a*x1)/(1+x1*(a-1)); // y Function
endfunction
x1=linspace(0,1.0,3); 
plot (x1,f,x1,x1); // plot comment
title ("(a).y-x diagram for the mixture at 40 oC","fontsize",4,"color","blue");
xlabel(" x1 ","fontsize",4,"color","blue");
ylabel(" y1 ","fontsize",4,"color","blue");
legend(["y1";"x1"],[2]);
disp ("Refer window 1","(a). y-x diagram at 40 oC");
// (b). p-x-y diagram at 40 oC
 // By using the following relation calculate p value for various value of x1,y1
 // p=(x1*P1sat)+(1-x1)*P2sat
x1=[0,0.2,0.5,0.8,1];
y1=[0,0.285,0.615,0.865,1];
p=[9.607,10.7526,12.471,14.1894,15.335];
xset('window',2);
plot (x1,p,y1,p);
title ("(b).P-y-x diagram for the mixture at 40 oC","fontsize",4,"color","blue");
xlabel(" x1 & y1 ","fontsize",4,"color","blue");
ylabel(" p in bar ","fontsize",4,"color","blue");
legend(["Liquid out";"Vapour"],[2]);
disp ("Refer window 2","(b). p-x-y diagram at 40 oC");
// (c).t-x-y diagram at 10 bar
// for any value of x1 at p=10 bar, the bubble temperature can be found by trial and error from the following relation
 // p=10 bar =(x1*P1sat)+(1-x1)*P2sat
T1sat=23.7; // Saturation temperature of Freon 22 at 10 bar in  oC
T2sat=41.6; // Saturation temperature of Freon 12 at 10 bar in  oC
// Thus, for x1=0.5, we find that t=31 oC. 
x1=0.5; // Let assume
P1sat=12.186; // Saturation pressure of Freon 22 at 31oC in bar
P2sat=7.654; // Saturation pressure of Freon 12 at 31oC in bar
a=P1sat/P2sat;
y1=(a*x1)/(1+x1*(a-1)); // y Function
// For different value of x1 the values of t,y1 are calculated by above expression and given below
x1=[0,0.5,1]; y1=[0,0.614,1]; t=[41.6,31,23.7];
xset('window',3);
plot (x1,t,y1,t);
title ("(c).t-y-x diagram for the mixture at 10 bar","fontsize",4,"color","blue");
xlabel(" x1 & y1 ","fontsize",4,"color","blue");
ylabel(" t in oC ","fontsize",4,"color","blue");
legend(["f";"g"]);
disp ("Refer window 3","(c).t-x-y diagram at 10 bar");
