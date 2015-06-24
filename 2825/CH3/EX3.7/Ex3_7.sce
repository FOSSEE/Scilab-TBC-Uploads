//Ex3_7 Pg-184
clc

disp("We know that (I0)*T2 = (I0)*T1*(2)^((T2-T1/10))")

disp("Substituting the given values,we have ")

disp("(40*10^(-6)) = (25*10^(-6)*(2)^x) where x=(T2-T1)/10")

disp("(2)^x = 1.6")

disp("Taking log on both sides,one obtains")

disp("      x*log(2) = log(1.6)")

disp("or    x = log(1.6)/log(2)")

x=log(1.6)/log(2)

disp(" Now x = (T2-T1)/10 or 0.678 = (T2-25)/10")
T1=25 //temperature T1
T2=x*10+T1 //temperature T2
diff_temp=T2-T1 //change in temperature
printf("\n So the change in temperature = %.2f degree celsius",diff_temp)
