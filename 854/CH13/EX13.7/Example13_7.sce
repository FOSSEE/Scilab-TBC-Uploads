//clear//
//Caption:Program to find the fraction of incident power that is reflected and transmitted
//Example13.7
//page460
clc;
teta1 = 30; //incident angle in degrees
n2 = 1.45;//refractive index of glass
teta2 = snells_law(teta1,n2);
etta1 = 377*cos(teta1/57.3); // intrinsic impedance in medium 1 in ohms
etta2 = (377/n2)*cos(teta2); //intrinsic impedance in medium2 in ohms
Tp = reflection_coefficient(etta1,etta2);//reflection coefficient for p-polarization
Reflected_Fraction_p = (abs(Tp))^2;
Transmitted_Fraction_p = 1-(abs(Tp))^2;
etta1s = 377*sec(teta1/57.3); //intrinsic impedance for s-polarization
etta2s = (377/n2)*sec(teta2); 
Ts = reflection_coefficient(etta1s,etta2s);//reflection coefficient for s-polarization
Reflected_Fraction_s = (abs(Ts))^2;
Transmitted_Fraction_s = 1-(abs(Ts))^2;
disp(teta2*57.3,'Transmission angle using snells law in degrees teta2 =')
disp(Tp,'Reflection coefficient for p-polarization Tp=')
disp(Reflected_Fraction_P,'Fraction of incident power that is reflected for p-polarization =')
disp(Transmitted_Fraction_p,'Fraction of power transmitted for p-polarization =')
disp(Ts,'Reflection coefficient for s-polarization Tp=')
disp(Reflected_Fraction_s,'Fraction of incident power that is reflected for s-polarization =')
disp(Transmitted_Fraction_s,'Fraction of power transmitted for s-polarization =')
//Result
//Transmission angle using snells law in degrees teta2 =   
//     20.171351  
//Reflection coefficient for p-polarization Tp=   
//  - 0.1444972  
//Fraction of incident power that is reflected for p-polarization =  
//    0.0337359  
//Fraction of power transmitted for p-polarization =   
//   0.9791206  
//Reflection coefficient for s-polarization Tp=   
//   - 0.2222748  
//Fraction of incident power that is reflected for s-polarization =  //    0.0494061  
//Fraction of power transmitted for s-polarization =   
//   0.9505939   
