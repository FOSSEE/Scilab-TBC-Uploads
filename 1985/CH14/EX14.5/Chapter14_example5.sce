clc
clear
//Input data
C=(2*10^-6)//Capacitance in F
er=80//Permitivity of the dielectric 
V=1000//Applied voltage in V

//Calculations
E1=(1/2)*C*V^2//Energy stored in the capacitor in Joule
Co=C/er//Capacitance of the capacitor when the dielectric is removed in F
E2=(1/2)*Co*V^2//Energy stored in the capacitor with vacuum as dielectric in J
E=E1-E2//Energy stored in the capacitor in polarizing the dielectric in J

//Output
printf('Energy stored in the capacitor is %i J \n The energy stored in the capacitor in polarizing the capacitor is %3.4f J',E1,E)
