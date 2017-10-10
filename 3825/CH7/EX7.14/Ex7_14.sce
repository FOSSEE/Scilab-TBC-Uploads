clc
YA=0.5//mole fraction of oxygen
YB=0.5//mole fraction of nitrogen
R=8.314//universal gas constant
deltasMix=-R*((YA*log(YA))+(YB*log(YB)))//molar entropy change associated with mixing of non identical gases
mprintf("deltasMix=%fper mol of mixture",deltasMix)//ans vary due to roundoff error


