//clear//
//Caption:Program to finid the electric field of incident, reflected and transmitted waves
//Example13.1
//page439
etta1 = 100;
etta2 = 300; //intrinsic impedance in ohms
T = reflection_coefficient(etta1,etta2);
Ex10_i = 100;//incident electric field in v/m
Ex10_r = T*Ex10_i;//reflected electric field in v/m
Hy10_i = Ex10_i/etta1;//incident magnetic field A/m
Hy10_r = -Ex10_r/etta1; //reflected magnetic field A/m
Si = (1/2)*Ex10_i*Hy10_i;//average incident power density in W/square metre
Sr = -(1/2)*Ex10_r*Hy10_r;//average reflected power denstiy in W/square metre
tuo = 1+T; //transmission coefficient
Ex20_t = tuo*Ex10_i; //transmitted electric field v/m
Hy20_t = Ex20_t/etta2; //transmitted magnetic field A/m
St = (1/2)*Ex20_t*Hy20_t; //average power density transmitted 
disp(T,'reflection coefficient t =');
disp(Ex10_i,'incident electric field in v/m Ex10_i =')
disp(Ex10_r,'reflected electric field in v/m Ex10_r =')
disp(Hy10_i,'incident magnetic field A/m Hy10_i =')
disp(Hy10_r,'reflected magnetic field A/m Hy10_r=')
disp(Si,'average incident power density in W/square metre Si=')
disp(Sr,'average reflected power denstiy in W/square metre Sr=')
disp(St,'average power density transmitted in W/square metre St=')
//Result
//reflection coefficient t =       0.5  
//incident electric field in v/m Ex10_i =     100.  
//reflected electric field in v/m Ex10_r =      50.  
//incident magnetic field A/m Hy10_i =      1.  
//reflected magnetic field A/m Hy10_r=     - 0.5  
//average incident power density in W/square metre Si=   50.  
//average reflected power denstiy in W/square metre Sr=  12.5  
//average power density transmitted in W/square metre St=     37.5  
