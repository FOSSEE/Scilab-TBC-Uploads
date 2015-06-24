clc;
h3=162.93;
hf1=120.06;
hg1=303.38;
hfg1=hg1-hf1;
x=(h3-hf1)/hfg1;
disp("the amount of vapour bled off at the flash chamber:");
disp(x);

//part II
s1=1.7155;//kJ/kg K
s2=s1;
s3=1.7071;
s4=1.7463;
h2=hg1+[(s1-s3)/(s4-s3)]*(314.86-hg1);
h3={(1-x)*h2}+x*hg1;

disp(h3,"h3=")
disp("hence vapour at inlet to the second stage compressor is still superheated")

//part III
h1=291.77;
h4=120.06;
Refrigerating=(1-x)*(h1-h4);
disp("refrigerating effect is:");
disp("kJ/kg",Refrigerating);

//part IV
h5=305.26;//kJ/kg
s5=s3+[(h3-hg1)/(h2-hg1)]*(s1-s3);

h6=319.54+[(s5-1.7028)/(1.7440-1.7028)]*(332.87-319.54);

W=(1-x)*(h2-h1)+(h6-h5);
disp("kJ/kg",W,"Work done per unit mass of refrigerant in the condenser is:");

//part V
Q=131.53;//W
COP=Q/W;
h2=319.54+[(s1-1.7028)/(1.7440-1.7028)]*(332.87-319.54);

h4=162.93;
W=(h2-h1);
Q=(h1-h4);

disp("coefficient of performance is:");
disp(COP);
