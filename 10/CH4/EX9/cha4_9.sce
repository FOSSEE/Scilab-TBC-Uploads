Iarated=100;Vt=100;
Ra=0.1;
Ia1=200;

Iastart=Vt/Ra

Rae=(Vt-20)/(200)
 
Ea2=Vt-Iarated*(Ra+Rae)
 
Rae2=(Vt-Ea2-20)/(200)

Ea3=Vt-Ia*(Ra+Rae2)
 
Ea3=Vt-Iarated*(Ra+Rae2)

Rae3=(Vt-Ea3-20)/200
 
Ea4=Vt-Iarated*(Ra+Rae3)
 
Rae4=(Vt-Ea4-20)/200

Ia=(Vt-Ea4)/Ra
 
R1=Rae-Rae2
 
R2=Rae2-Rae3
 
R3=Rae3-Rae4
