//laplace//
printf("Given a)Excitation voltage(Ein)=2V \n b) Setting Ratio(a)= 0.4 \n")
Ein=2;
disp(Ein,"Ein=")
a=0.4;
disp(a,"a=")
Rt=10^3;
disp(Rt,"Rt=")
Rl=5*10^3;
disp(Rl,"Rl=")
printf("Eo = (a*Ein)/(1+(a*(1-a)*Rt)/Rl) \n")
Eo = (a*Ein)/(1+(a*(1-a)*Rt)/Rl);
disp(Eo,"output voltage(E0)=")
printf("e=((a^2)*(1-a))/((a*(1-a))+(Rl/Rt)) \n")
e=((a^2)*(1-a))/((a*(1-a))+(Rl/Rt));
disp(e,"loading error=")
printf("E=Ein*e \n")
E=Ein*e; //Voltage error=Excitation voltage(Ein)*Loading error(e)
disp(E,"Voltage error=")
