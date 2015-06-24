clear
//Depends on data22_7.sci file
//Obtain path of solution file
path = get_absolute_file_path('Ex22_7.sce')
//Obtain path of data file
datapath = path + filesep() + 'data22_7.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the shrinkage pressure P (N/mm2)
P = sigmaMax * (D3^2 - D2^2)/(D3^2 + D2^2)
//Calculate the radial and tangential stresses in the jacket
//Store the results in arrays for plotting purposes sigmar1, sigmat1 (N/mm2)
sigmar1 = [];
sigmat1 = [];
rad1 = [];
count = 0;
//Jacket radius varies from D2/2 to D3/2
for r = D2/2:2:D3/2
    count = count + 1;
    rad1(1,count) = r;
    sigmar1(1,count) = ((-1 * P * D2^2)/(D3^2 - D2^2))*((D3^2/(4 * r^2)) - 1);
    sigmat1(1,count) = ((P * D2^2)/(D3^2 - D2^2))*((D3^2/(4 * r^2)) + 1);
end
//Calculate the radial and tangential stresses in the inner tube
//Store the results in arrays for plotting purposes sigmar2, sigmat2 (N/mm2)
sigmar2 = [];
sigmat2 = [];
rad2 = [];
count = 0;
//Inner tube radius varies from D1/2 to D2/2
for r = D1/2:2:D2/2
    count = count + 1;
    rad2(1,count) = r;
    sigmar2(1,count) = ((-1 * P * D2^2)/(D2^2 - D1^2))*(1 - (D1^2/(4 * r^2)));
    sigmat2(1,count) = ((-1 * P * D2^2)/(D2^2 - D1^2))*(1 + (D1^2/(4 * r^2)));
end
//Calculate the radial and tangential stresses due to internal pressure
//Store the results in arrays for plotting purposes sigmar3, sigmat3 (N/mm2)
sigmar3 = [];
sigmat3 = [];
rad3 = [];
count = 0;
//Radius varies from D1/2 to D3/2
for r = D1/2:2:D3/2
    count = count + 1;
    rad3(1,count) = r;
    sigmar3(1,count) = ((-1 * Pi * D1^2)/(D3^2 - D1^2))*((D3^2/(4 * r^2)) - 1);
    sigmat3(1,count) = ((Pi * D1^2)/(D3^2 - D1^2))*((D3^2/(4 * r^2)) + 1);
end
//Calculate the resultant stresses
//Store the results in arrays for plotting purposes sigmar4, sigmat4 (N/mm2)
//For inner tube
sigmar4i = sigmar3(1,1:length(sigmar2)) + sigmar2(1,:);
sigmat4i = sigmat3(1,1:length(sigmat2)) + sigmat2(1,:);
//For jacket
sigmar4j = sigmar3(1,length(sigmar2):length(sigmar3)) + sigmar1(1,:);
sigmat4j = sigmat3(1,length(sigmat2):length(sigmat3)) + sigmat1(1,:);
//Plot stresses due to internal pressure
subplot(231)
plot(rad3, sigmar3, '-o')
title("Radial stress distribution due to internal pressure")
xlabel("Radius(mm)")
ylabel("Radial stress(N/mm2)")
subplot(232)
plot(rad3, sigmat3, '-o')
title("Tangential stress distribution due to internal pressure")
xlabel("Radius(mm)")
ylabel("Tangential stress(N/mm2)")
//Plot stresses due to shrink fit
subplot(233)
plot([rad2 rad1], [sigmar2,sigmar1], '-o')
title("Radial stress distribution due to shrink fit")
xlabel("Radius(mm)")
ylabel("Radial stress(N/mm2)")
subplot(234)
plot([rad2 rad1], [sigmat2,sigmat1], '-o')
title("Tangential stress distribution due to shrink fit")
xlabel("Radius(mm)")
ylabel("Tangential stress(N/mm2)")
//Plot resultant stresses
subplot(235)
plot([rad2 rad1], [sigmar4i,sigmar4j], '-o')
title("Resultant radial stress distribution")
xlabel("Radius(mm)")
ylabel("Radial stress(N/mm2)")
subplot(236)
plot([rad2 rad1], [sigmat4i,sigmat4j], '-o')
title("Resultant tangential stress distribution")
xlabel("Radius(mm)")
ylabel("Tangential stress(N/mm2)")

