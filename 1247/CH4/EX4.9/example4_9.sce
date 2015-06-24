clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.9
// Page 125
printf("Example 4.9, Page 125 \n \n");

// solution

m = 100 //[kg] soya fatty acid (basis)
// use table 4.6
M1 = m/.3597 // M(avg) of soya fatty acid
//3 mol of fatty acid + 1 mol of glycerol = 1 mol triglyceride + 3 mol of water
M2 = M1*3+92.09-3*18.02 // Mavg of soyabean oil
q1 = M2*m/(M1*3) // soyabean oil per 100kg fatty acid
// based on reactions occuring
q2 = .0967+.1822*2+.0241*3 // kmol H2 req. per 100 kg soya fatty acid
q3 = .5101 // kmol H2 req. per 100 kg soyabean oil
q4 = 11.434 // Nm^3/100kg soyabean oil
// x = linoleic acid converted to oleic acid
// y = oleic acid converted to stearic acid
q5 = 282.46*6.7/278.43 // 
//q6 = 282.46*x/280.15 = 1.00717x [kg] oleic acid by linoleic acid
//q7 = 284.48*y/282.46 = 1.00715y [kg] stearic acid by oleic acid
//q8 = 100.097 + .00717x + .00715y  total fatty acid
//stearic balance : -.00105x + 1.00611y = 10.8142    (i)
//linoleic balance : 1.0019x + .00019y = 48.4975     (ii)
// solving (i) and (ii) we get
x = 48.5 //kg
y = 10.8 //kg
M3 = 100.52/.3596 // Mavg of fatty acid
H2req1 = .5334-.2864 // per 100kg fatty acid
H2req = 52.95 //Nm^3/t 
I2s = 129.5 //kg I2 per 100 kg soyabean oil // for soyabean oil
I2h = 69.2 //kg I2 per 100 kg of fat
printf("(a) \n \n theoretical H2 required = "+string(q4)+" Nm^3/100kg soyabean oil \n \n \n(b) \n \n actual H2 required = "+string(H2req)+" \n \n \n(c) \n \n Iodine value for soyabean oil = "+string(I2s)+". \n \n \n(d) \n \n Iodine value of hardened fat = "+string(I2h)+".")
