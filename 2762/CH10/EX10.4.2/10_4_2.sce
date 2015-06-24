//Transport Processes and Seperation Process Principles
//Chapter 10
//Example 10.4-2
//Stage and continuous Gas-liquid Seperation Processes
//given data from the graph mentioned in the example
yastar=0.052;
xal=0.1;//bulk concn of A in liquid phase
yag=0.38;//bulk concn of A in gas phase
yai=0.197;//concn of A at interface
xai=0.247;//yai=f(xai)
kdy=1.465/1000;//gas phase mass transfer coefficient
kdx=1.967/1000;//liq phase mass transfer coefficient
md=(yai-yastar)/(xai-xal);//graphical correlation
yaim=((1-yai)-(1-yag))/((log((1-yai)/(1-yag)))/log(2.71828183))+1;//graphical correlation
xaim=((1-xal)-(1-xai))/((log((1-xal)/(1-xai)))/log(2.71828183))+1;//graphical correlation
yam=((1-yastar)-(1-yag))/((log((1-yastar)/(1-yag)))/log(2.71828183))+1;//graphical correlation
//(1/(Kdy(1-yam)))=(1/(kdy/(1-yaim)))+(md/(kdx/(1-xaim)))
A=(1/(kdy/(1-yaim)));
B=(md/(kdx/(1-xaim)));
Kdy=((A+B)^(-1))*(1-yam);
R=(A/(A+B))*100;//
Na=(Kdy/(1-yam))*(yastar-yag);
mprintf("overall mass transfer coefficient= %f kg mol/s m2",Kdy)
mprintf(" percentage resistace in gas film= %f percent",R)
mprintf(" percentage resistace in liquid film= %f percent",(100-R))
mprintf(" Flux= %f kg mol/s m2",Na)
