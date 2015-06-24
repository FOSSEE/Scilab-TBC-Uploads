v1 = 1; v2 = v1; v3 = v2; v4 = v2;
e = 0.56; // Degree of reaction
P = 1; // Dummy
T = 1200; R = 8.3143;
x1 = (1-e)/2; x2 = (1-e)/2;
x3 = e/2; x4 = e/2;
K = (((x3^v3)*(x4^v4))/((x1^v1)*(x2^v2)))*P^(v3+v4-v1-v2); // Equillibrium constant
dG = -R*T*log(K);
disp(K,"Equillibrium constant is")
disp("J/gmol",dG,"Gibbs function change is")