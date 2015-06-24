// Scilab Code Ex4.7: Page-146(2013)
clc; clear
function region = check_region(lambda)
    if lambda >= 400 & lambda < 700 then
        region = "visible";
        else region = "infrared";
    end
endfunction
n_l = 3;    // Lower electron orbit in Paschen series
n_u = [4, %inf];    // First and limiting upper orbits in Paschen series
R_inf = 1.0974e+007;    // Rydberg constant, per metre
lambda_max = 1/(R_inf*(1/n_l^2-1/n_u(1)^2)*1e-009);    // The longest wavelength in Paschen series, nm
region = check_region(lambda_max);    // Check for the region
printf("\nThe maximum wavelength is %d nm and is in the %s region", ceil(lambda_max), region);
lambda_min = 1/(R_inf*(1/n_l^2-1/n_u(2)^2)*1e-009);    // The shortest wavelength in Paschen series, nm
region = check_region(lambda_min);    // Check for the region
printf("\nThe minimum wavelength is %d nm and is also in the %s region", lambda_min, region);

// Result
// The maximum wavelength is 1875 nm and is in the infrared region
// The minimum wavelength is 820 nm and is also in the infrared region 