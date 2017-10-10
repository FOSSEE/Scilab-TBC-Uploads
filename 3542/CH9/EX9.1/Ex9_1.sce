// Example no 9.1
// To find the intermodulation frequencies generated 
// Page no. 451

clc;
clear all;

// Given data
f1=1930;                                         // First carrier frequency
f2=1932;                                         // second carrier frequency
F1=1920;                                         // Lower frequency of the band
F2=1940;                                         // Upper frequency of the band

for n=0:3
    x1=(2*n+1)*f1-2*n*f2
    if x1 < = F2 then
        printf('\n IF frequency %0.0f MHz lies inside the band',x1);
    else
        printf('\n IF frequency %0.0f MHz lies outside the band',x1);
    end
end

for n=0:3
    x2=(2*n+2)*f1-(2*n+1)*f2
    if x2 < = F2 then
        printf('\n IF frequency %0.0f MHz lies inside the band',x2);
    else
        printf('\n IF frequency %0.0f MHz lies outside the band',x2);
    end
end

for n=0:3
    x3=(2*n+1)*f2-2*n*f1
    if x3 < = F2 then
        printf('\n IF frequency %0.0f MHz lies inside the band',x3);
    else
        printf('\n IF frequency %0.0f MHz lies outside the band',x3);
    end
end

for n=0:3
    x4=(2*n+2)*f2-(2*n+1)*f1
    if x4 < = F2 then
        printf('\n IF frequency %0.0f MHz lies inside the band',x4);
    else
        printf('\n IF frequency %0.0f MHz lies outside the band',x4);
    end
end
