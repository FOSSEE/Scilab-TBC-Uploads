//Normally aspirated and supercharged engine
clc,clear
//Given:
V_s=3300 //Swept volume in cc
//For normally aspirated
bmep1=9.3 //Brake mean effective pressure in bar
N1=4500 //Engine speed in rpm
eta_it1=28.5 //Indicated thermal efficiency in percent
eta_m1=90 //Mechanical efficiency in percent
m1=205 //Mass of unboosted engine in kg
//For supercharged
bmep2=12.1 //Brake mean effective pressure in bar
N2=4500 //Engine speed in rpm
eta_it2=24.8 //Indicated thermal efficiency in percent
eta_m2=90 //Mechanical efficiency in percent
m2=225 //Mass of boosted engine in kg
h=poly(0,'h') //Defining the unknown h hours duration
CV=44000 //Calorific value of fuel in kJ/kg
//Solution:
//For normally aspirated
bp1=bmep1*100*V_s/1D+6*N1/(2*60) //Brake power in kW
bp1=round(bp1)
ip1=bp1/eta_m1*100 //Indicated power in kW
m_f1=ip1/(eta_it1/100*CV) //Fuel flow in kg/s
m_f1=m_f1*3600*h //Mass of fuel flow in h hours in kg
Mass1=(m1+m_f1)/bp1 //Specific mass in kg/kW
//For supercharged
bp2=bmep2*100*V_s/1D+6*N2/(2*60) //Brake power in kW
bp2=round(bp2)
ip2=bp2/eta_m2*100 //Indicated power in kW
m_f2=ip2/(eta_it2/100*CV) //Fuel flow in kg/s
m_f2=m_f2*3600*h //Mass of fuel flow in h hours in kg
Mass2=(m2+m_f2)/bp2 //Specific mass in kg/kW
for h=0:0.01:10; //Defining the range of h(hours)
    if (horner(Mass1,h) > horner(Mass2,h)) then //Specific mass of boosted engine is always be less than unboosted
        continue
    else
        h_max=h
        break
    end
end
//Results:
printf("\n The maximum value of h hours duration, h_max = %.2f hours\n\n",h_max)
