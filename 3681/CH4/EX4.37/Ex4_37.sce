// Calculating the mean temperature rise
clc;
disp('Example 4.37, Page No. = 4.73')
// Given Data
th = 20;// Heating time (in minuts)
Th = 120;// Heating time constant (in minuts)
tc = 15;// Cooling time (in minuts)
Tc = 180;// Cooling time constant (in minuts)
Tm = 50;// Final temperature rise on the continuous full load (in degree celsius)
Loss_fl = 500;// Copper loss at full load (in Watt)
Loss_nl = 300;// Copper loss at no load (in Watt)
// Calculation of the mean temperature rise
Total_Loss_fl = Loss_fl+Loss_nl;// Total loss at full load (in Watt)
Total_Loss_nl = Loss_nl;// Total loss at no load (in Watt)
Tn = Total_Loss_nl/Total_Loss_fl*Tm;// Final temperature rise when running on no load (in degree celsius)
T = ((Tm*th/Th)+(Tn*tc/Tc))/(th/Th+tc/Tc);// Mean temperature rise (in degree celsius)
disp(T,'Mean temperature rise (degree celsius)=');
//in book answer is 39.58 degree celsius.  The answers vary due to round off error

