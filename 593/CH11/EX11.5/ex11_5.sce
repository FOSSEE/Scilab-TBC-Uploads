clear;

//clc();

// Example 11.5

// Page: 283

printf("Example-11.5  Page no.-283\n\n");

//***Data***//


R = 8.314;//[J/(mol*K)] Universal gas constant
T = 298.15;//[K] Temperature
g_a_0 = 2;//[kj/mol] Gibb's free energy of the pure species 'a'
g_b_0 = 1;//[kj/mol] Gibb's free energy of the pure species 'b'

for a = 0:3
    deff("[y]=f(x)","y= x*g_a_0 + (1-x)*g_b_0 + (R*T)/1000*(x*log(x) + (1-x)*log(1-x) + x*a*(1-x)^(2) + (1-x)*a*(x)^(2)) ")
 
x=[0.000001:0.01:0.99999];
 
fplot2d(x,f)
xlabel(" mole fraction of species a,x_a");
ylabel(" gibb''s free energy per mole of mixture,g_mixture kJ/mol");
end

printf(" The plot is shown in the graphic window.");