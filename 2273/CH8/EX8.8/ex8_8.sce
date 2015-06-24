//find string efficiency
clear;
clc;
//soltion
//given
V1=poly(0,"V1");
V2=poly(0,"V2");
V3=poly(0,"V3");
V=poly(0,"V");
//Since wC is common so its cancelled
function x=%c_sign(a)
            x = '1.05*V2/1.2' + a + '0.05*V3/1.2'
            endfunction
printf("V1=");
disp(sign('+'));
function x=%c_sin(a)
            x = '-1.2*V2/0.2' + a + '1.05*V3/0.2'
            endfunction
printf("\n\nV1=");
disp(sin('+'));
V2=25/23.25*V1;
V3=1.65/1.1625*V1;
printf("\n\nOn solving above equation\n\nV2= ");
disp(V2);
printf("V3=");
disp(V3);
V=V1+V2+V3;
V1=roots(1-V);//ignoring 'V' for making calculation easy
V2=25/23.25*V1*poly(0,"V");
V3=1.65/1.1625*V1;
Se=100/(3*V3);
printf("\n\nString Efficiency= %.1f percent",Se);
