//Example 11.13

clear;
clc;

printf("\tExample 11.13\n");

xs=[0.55;0.5;0.425;0.31;0.225;0.105];
xd=[0.78;0.775;0.77;0.76;0.75;0.74];
differ=xd-xs;
for i=1:6
    reci(i)=1/(xd(i)-xs(i));
end

m=[xs xd differ reci];
printf("\n     xs      xd      (xd-xs)   1/(xd-xs)\n");
disp(m);
plot(xs,reci);
xtitle('Graphical integration','xs','1/xd-xs)');

//Area under the curve is calculated and is found to be 1.1

//logdiv = S1/S2 = area under the curve
logdiv=1.1;
S1=100;           //Assume
div=exp(logdiv);
S2=S1/div;
Db=S1-S2;        //Product obtained
amt=xs(1)*S1-(xs(6)*S2);
avg=amt/Db;

printf("\nAverage composition is %.2f kmol\n",avg);

L=4000;         //latent heat
R=2.1;

h=R*L;
printf("Heat required to produce reflux per kmol : %d kJ\n",h);

//End