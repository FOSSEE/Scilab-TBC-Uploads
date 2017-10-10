s=%s
sys=syslin('c',(k)/(s*(s+1)*(s+4)))
evans(sys)

//breakaway points

disp("break away points are")
disp(roots(numer(derivat(sys))))