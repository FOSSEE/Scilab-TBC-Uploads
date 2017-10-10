clc
p1 = 1 // Air pressure at compressure inlet in bar
t1 = 30 // Air temperature at compressure inlet in degree Celsius
p2 = 3.5 // Air pressure at compressure exit in bar
t2 = 141 // Air temperature at compressure exit in degree Celsius
v = 90 // Air velocity at compressure exit in m/s
cp = 1.0035 // Specific heat capacity of air in kJ/kg
y = 1.4 // Heat capacity ratio
R = 0.287 // Gas constant
printf("\n Example 8.20\n")
T2s = (t1+273)*(p2/p1)^((y-1)/y)
if T2s>(t2+273) then
    printf("\n Part A:")
    printf("\n There is heat loss to surrounding.")
end
n =(1/(1-((log((t2+273)/(t1+273)))/(log(p2/p1)))))
printf("\n\n Part B:")
printf("\n The polytropic index is %f ",n)
Wa = cp*(t1-t2)-(v^2)/2000 // Actual work 
Wt = -R*(t1+273)*log(p2/p1) - (v^2)/2000 // Isothermal work
nt =Wt/Wa // Isothermal efficency
printf("\n\n Part C:")
printf("\n Isothermal efficiency is %f percent ",nt*100)
df = cp*(t1-t2) + (t1+273)*(R*log(p2/p1) - cp*log((t2+273)/(t1+273))) -(v^2)/2000
Wm = df // Minimum work input
I = Wm-Wa // Irreversibility

printf("\n\n Part D:")
printf("\n The minimum work input is %f kJ/kg, and irreversibility is %f kJ/kg",Wm,I)
// The answers given in the book contain round off error

neta = Wm/Wa
printf("\n\n Part E:")
printf("\n Second law efficiency is %d percent",ceil(neta*100))

