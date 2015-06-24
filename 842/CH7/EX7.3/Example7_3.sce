//clear//
//Example7.3:Half Sample Delay system
syms t n T;
//T = 0.1; //Sampling time in seconds
xct = sin(%pi*t/T)/(%pi*t);
t = t-T/2;
yct_del  = sin(%pi*t/T)/(%pi*t);
disp(yct_del,'Output of Half Sample delay system continuous =');
t = n*T-T/2;
xdn = sin(%pi*t/T)/(%pi*t);
ydn_del = xdn;
disp(ydn_del,'Output of Half Sample delay system discrete =');
hdn = T*ydn_del;
disp(hdn,'Impulse Response of discrete time half sample delay system=');
//Result
//Output of Half Sample delay system continuous = 
//sin(3.14*(t-T/2)/T)/(3.14*(t-T/2))  
//Output of Half Sample delay system discrete =   
// sin(3.14*(n*T-T/2)/T)/(3.14*(n*T-T/2))  
// Impulse Response of discrete time half sample delay system=   
// T*sin(3.14*(n*T-T/2)/T)/(3.14*(n*T-T/2))   
