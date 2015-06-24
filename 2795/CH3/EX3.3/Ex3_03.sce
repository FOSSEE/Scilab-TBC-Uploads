// Scilab Code Ex3.3: Page-94 (2013)
clc; clear
function flag = check_visible(lambda)
    if lambda >= 400 & lambda < 700 then
        flag = 1;
        else flag = 0;
    end
endfunction
R_H = 1.0968e+007;    // Rydberg constanr, per metre
f = zeros(7);
// Lyman series
printf("\nFor Lyman series, the wavelengths are:\n")
n = 1;    // The lowest level of Lyman series
for k = 2:1:3
    lambda = 1/(R_H*(1/n^2-1/k^2))/1e-009;
    printf("k = %d, %5.1f nm", k, lambda);
    f(k) = check_visible(lambda); 
    if f(k) == 1 then
            printf(" (Visible) \n");
        else
            printf(" (Ultraviolet)\n");
    end
end
if f(1)  == 1 | f(2)  == 1 | f(3) == 1 then
        printf("Some wavelengths of Lyman series fall in the visible region.\n")
    else
        printf("All the wavelengths of Lyman series fall in the UV-region.\n")
    end

// Balmer series
printf("\nFor Balmer series, the wavelengths are:\n")
n = 2;    // The lowest level of Balmer series
for k = 3:1:7
    lambda = 1/(R_H*(1/n^2-1/k^2))/1e-009;
    printf("k = %d, %5.1f nm", k, lambda);
    f(k) = check_visible(lambda);
        if f(k) == 1 then
            printf(" (Visible) \n");
        else
            printf(" (Ultraviolet)\n");
    end
end

// Paschen series
printf("\nFor Paschen series, the wavelengths are:\n")
n = 3;    // The lowest level of Lyman series
for k = 4:1:5
    lambda = 1/(R_H*(1/n^2-1/k^2))/1e-009;
    printf("k = %d, %5.1f nm", k, lambda);
    f(k) = check_visible(lambda); 
    if f(k) == 1 then
            printf(" (Visible) \n");
        else
            printf(" (Infrared)\n");
    end
end
// For limiting member
k = %inf;
lambda = 1/(R_H*(1/n^2-1/k^2))/1e-009;
printf("k = %d, %5.1f nm", %inf, lambda);
f(6) = check_visible(lambda);
if f(6) == 1 then
            printf(" (Visible) \n");
        else
            printf(" (Infrared)\n");
    end
if f(4)  == 1 | f(5)  == 1 | f(6) == 1 then
        printf("Some wavelengths of Paschen series fall in the visible region.")
    else
        printf("All the wavelengths of Paschen series fall in the IR-region.")
    end
        
// Result 
// For Lyman series, the wavelengths are:
// k = 2, 121.6 nm (Ultraviolet)
// k = 3, 102.6 nm (Ultraviolet)
// All the wavelengths of Lyman series fall in the UV-region.

// For Balmer series, the wavelengths are:
// k = 3, 656.5 nm (Visible) 
// k = 4, 486.3 nm (Visible) 
// k = 5, 434.2 nm (Visible) 
// k = 6, 410.3 nm (Visible) 
// k = 7, 397.1 nm (Ultraviolet)

// For Paschen series, the wavelengths are:
// k = 4, 1875.6 nm (Infrared)
// k = 5, 1282.1 nm (Infrared)
// k = Inf, 820.6 nm (Infrared)
// All the wavelengths of Paschen series fall in the IR-region.  