// Scilab code Ex6.15: Pg:263 (2008)
clc;clear;
mu_O = 1.5443;    // Refractive index for an ordinary beam
mu_E = 1.5533;    // Refractive index for an extra-ordinary beam
t = 0.01436;    // Thickness of the quartz plate, cm
lambda = zeros(6);    // Initialize lambda
// As t = (2*n + 1)*lambda/(4*(mu_O - mu_E)) for quarter wave plate, solving for lambda
printf("\nFor quarter wave in visible region the wavelengths are:\n");
for n = 1:1:6
lambda(n) = 4*(mu_E - mu_O)*t/(2*(n-1) + 1)*1e+008;    // Wavelength for a quarter wave plate, cm
if lambda(n) >= 3500 & lambda(n) <= 8000 then
    printf("%d ansgtrom; ", ceil(lambda(n)));
end
end // for loop
// As t = (2*n + 1)*lambda/(2*(mu_O - mu_E)) for half wave plate, solving for lambda
printf("\n\nFor half wave in visible region the wavelengths are:\n");
for n = 1:1:6
lambda(n) = 2*(mu_E - mu_O)*t/(2*(n-1) + 1)*1e+008;    // Wavelength for a half wave plate, cm
if lambda(n) >= 3500 & lambda(n) <= 8000 then
    printf("%d ansgtrom; ", ceil(lambda(n)));
end
end    // for loop

// Result 
// For quarter wave in visible region the wavelengths are:
// 7386 ansgtrom; 5744 ansgtrom; 4700 ansgtrom; 

// For half wave in visible region the wavelengths are:
// 5170 ansgtrom; 3693 ansgtrom;  