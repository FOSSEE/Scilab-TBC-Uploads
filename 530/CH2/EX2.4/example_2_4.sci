clear all;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.4
// Page 32
printf("Example 2.4, Page 32 \n\n")

Ti = 300;          //Internal temp of hot gas in degree Celsius
OD = 0.1;          //Outer diameter of long metal pipe in meters
ID = 0.04;         //Internal diamtere of long metal pipe in meters
ki = 0.052;        //thermal conductivity of mineral wood in W/mK
To = 50;           //Outer surface temperature in degree celsius
hi = 29;           //heat transfer coefficient in the inner side in W/m^2 K
ho = 12;           //heat transfer coefficient in the outer pipe W/m^2 K

//Determination of thickness of insulation
function[f] = thickness(r)
    f = r*(10.344 + 271.15*log(r*(0.05)^-1))-11.75
    funcprot(0);
endfunction
r = 0.082;
while 1
    rnew = r - thickness(r)/diff(thickness(r));
    if rnew == r then
        r3 = rnew;
        break;
    end
    r = rnew;
end
t = r3 - OD/2;
printf("\n Thickness of insulation = %f cm",t*100);
//Heat loss per unit length
q = 600*(22/7)*r3;
printf("\n Heat loss per unit length = %.1f W/m",q);
