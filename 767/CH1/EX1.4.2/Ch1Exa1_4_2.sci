// Scilab code Exa1.4.2 : Estimation of the Nucleus type from its radius : Page 33 (2011)
r = 3.46e-015; // Radius of the nucleus, m
r0 = 1.2e-015; // Distance of closest approach of the nucleus, m
A = round((r/r0)^3); // Mass number of the nucleus
if A == 23 then
   element = "Na";
elseif A == 24 then
   element = "Mg";
elseif  A == 27 then
   element = "Al";
elseif  A == 28 then
   element = "Si";
end
printf("The mass number of the nucleus is %d and the nucleus is of %s", A, element);

//  Result
// The mass number of the nucleus is 24 and the nucleus is of Mg