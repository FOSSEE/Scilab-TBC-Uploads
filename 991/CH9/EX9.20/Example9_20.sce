//Example 9.20.
clc
disp("  In the first set,")
Vid=100-(-100) //in uV
disp(Vid,"    Vid = Vd(uV) = V1 = V2 =")
Vc=(1/2)*(100+(-100)) // in uV
disp(Vc,"      Vc(uV) = 1/2(V1+V2) =")
disp("  Vo = Ad*Vid * [1 + 1/CMRR * Vc/Vid]")
disp("     = Ad*200 * [1 + 1/1000 * 0/200] = 200*Ad uV               Eq.1")
disp("  In the second set,")
Vd=1100-900 // in uV
disp(Vd,"      Vd(uV) = V1 - V2 =")
Vc=(1/2)*(1100+900)
disp(Vc,"      Vc(uV) = 1/2(V1+V2) =")
disp("Hence,  Vo = Ad*Vid * [1 + 1/CMRR * Vc/Vid]")
disp("           = Ad*200 * [1 + 1/1000 * 1000/200] = 201*Ad uV            Eq.2")
disp("Comparing Eq.1 and 2, the output voltages for the two sets of input signals result in a 0.5% difference.")
disp("Thought the difference voltage Vd = 200 uV in both the cases, the output is not the same and hence the effect of common mode voltage Vc has same influence in the output voltage and it decreases with increase in CMRR.")
disp("When CMRR = 10000, a similar analysis as that of case (i) gives")
disp("        Vo = Ad*200 * [1 + 1/10000 * 1000/200] = 200.1*Ad uV")
disp("Here the output voltages differ by 0.05%. Hence as the CMRR increases, the difference between the output voltages decreases.")