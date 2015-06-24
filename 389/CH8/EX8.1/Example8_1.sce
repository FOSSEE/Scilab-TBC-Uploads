clear;
clc;

// Illustration 8.1
// Page: 278

printf('Illustration 8.1 -  Page: 278\n\n');

// solution

//****Data****//
P_star = 2*10^(5);// [N/square m]
X_methane = 0.6;
X_ethane = 0.2;
X_propane = 0.08;
X_nbutane = 0.06;
X_npentane = 0.06;
//******//

MoleFraction = [0.6 0.2 0.08 0.06 0.06]
Heading = ["Component" "Equilibrium Partial Pressure" "Vapour Pressue    " "Mole Fraction"];
Component = ["Methane" "Ethane   " "Propane" "n-Butane" "n-Pentane"];
VapPressure = [0 42.05 8.96 2.36 0.66];// [N/square m]
Sum = 0;
for i = 1:4
    printf("%s \t",Heading(i));
end
printf("\n");
for i = 1:5
    printf("%s \t ",Component(i));
    printf("%e \t \t \t",(MoleFraction(i)*P_star));
    printf("%e \t \t",(VapPressure(i)*10^(5)));
    if  (VapPressure(i) =  = 0)
        printf("\t \n");
        Sum = Sum+0;
    else
         printf("%f \n",(MoleFraction(i)*P_star)/(VapPressure(i)*10^(5)));
         Sum = Sum+(MoleFraction(i)*P_star)/(VapPressure(i)*10^(5));

end
end
printf("Mole Fraction Of solvent Oil is %f",1-Sum);