//clear//
clear;
clc;

//Example 20_1
//Given
Fin = 2*10^3; //[kg/day]
//w(1) = paraffin wax, w(2) = paper pulp
wi = [0.25,0.75]'; //[wieght percent]

//Solution
//Using convenient units in Eq.(17.24)
//As the ratio of kerosene to pulp is constant, flow rates should be 
//expressed in pounds of kerosene. Then, all the concentrations must
//be in pound of wax-free kerosene. The unextracted paper had no kerosene
//so the first cell must be treated separately.
//Refering to the Fig.20.3
//Basis:
F = 100; //[lb wax + kerosene-free pulp ]
//By making a mass balance over wax
//wax_in = F*(wi(1)/wi(2))+ 0.0005*s (s is the wax input with solvent)
//wax_out = F*(0.002)+(s-200)*0.05
//by wax_in = wax_out
s_in = (33.33+9.8)/(0.05-0.0005); //[lb]
//The concentration of this stream is, therefore
s_out = 200; //[lb]
s_stsol = s_in-s_out; //[lb]
wax_sol = s_stsol*0.05; //[lb]
//The concentration in the underflow to the second unit equals that
//of the overflow from the first stage, or 0.05 lb of wax per pound
//of kerosene. The wax in the underflow to unit 2 is 
wax_uflow_2 = s_out*0.05; //[lb]
wax_oflow_21 = wax_uflow_2+wax_sol-F*(wi(1)/wi(2)) //[lb] 
  
//The concentrations of this stream is, therefore,
ya = wax_oflow_21/871;
yastar = 0.05;
xa = yastar;
ybstar = 0.2/s_out;
xb = ybstar;
yb = 0.0005;

//Since 1 stage has already ben taken into account,
//Eq.(17.24), will give N-1 stages, Hence
N = log((yb-ybstar)/(ya-yastar))/log((yb-ya)/(ybstar-yastar));
disp(N+1,'The total number of ideal stages is');
