// Calculate minimum depth up to which post machining is to be done
clc
D_0 = 0.7e-4 // diffusion coefficient
Q = 157 // Energy in kJ mol^-1, considered from table 8.2
R = 8.314// Universal gas constant
T = 950 // temperature in Celsius
c2 = 0.8 // concentration in percentage
cs = 0 // concentration in percentage
c_x = 0.6// concentration in percentage
t = 4 // time in hours
a = 1 //let
printf("\n Example 8.3")
A = cs
B = c2-cs 
D = D_0*exp(-Q*1e3/(R*(T+273)))
k = erf(((A-c_x)/B))*-1
if k >0.7 then
    if k<0.712 then
           z = 0.81 // from table
    end
 
end
x = z*2*sqrt(D*t*3600)

printf("\n Depth up to which machining is required is nearly %.2f mm",x*1e3)
// numerical value of answer in book is 0.75

